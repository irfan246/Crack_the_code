import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/data_penjumlahan.dart';
part 'penjumlahan_event.dart';
part 'penjumlahan_state.dart';

class PenjumlahanBlocMode2Level3
    extends Bloc<PenjumlahanEvent, PenjumlahanState> {
  static const int _timeLimit = 60;
  late Timer _timer;
  int _remainingTime = _timeLimit;

  PenjumlahanBlocMode2Level3()
      : super(PenjumlahanLoadedState(safes: _generateInitialSafes())) {
    on<PenjumlahanMode2Level3StartTimer>(_onStartTimer);
    on<SelectNumber>(_onSelectNumber);
    on<CheckWin>(_onCheckWin);
    on<PenjumlahanMode2Level3ResetEvent>(_onRestartGame);
    on<UpdateTime>(_onUpdateTime);
    on<TimeOut>(_onTimeOut);
  }

  void _onStartTimer(
      PenjumlahanMode2Level3StartTimer event, Emitter<PenjumlahanState> emit) {
    // Initialize game state
    emit(PenjumlahanLoadedState(
      safes: _generateInitialSafes(),
      remainingTime: _remainingTime,
    ));

    // Start countdown timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(UpdateTime());
    });
  }

  void _onUpdateTime(UpdateTime event, Emitter<PenjumlahanState> emit) {
    if (_remainingTime > 0) {
      _remainingTime--;

      final currentState = state;
      if (currentState is PenjumlahanLoadedState) {
        emit(currentState.copyWith(remainingTime: _remainingTime));
      }
    } else {
      add(TimeOut());
    }
  }

  void _onTimeOut(TimeOut event, Emitter<PenjumlahanState> emit) {
    _timer.cancel();
    emit(PenjumlahanFailedState());
  }

  void _onSelectNumber(SelectNumber event, Emitter<PenjumlahanState> emit) {
    final currentState = state as PenjumlahanLoadedState;
    final safes = List<PenjumlahanSafeState>.from(currentState.safes);

    final safe = safes[event.safeIndex];
    if (safe.isUnlocked) return;

    final updatedSelectedIndexes = List<int>.from(safe.selectedIndexes);

    if (updatedSelectedIndexes.length < 3 &&
        !updatedSelectedIndexes.contains(event.selectedIndex)) {
      updatedSelectedIndexes.add(event.selectedIndex);
    }

    safes[event.safeIndex] = safe.copyWith(
      selectedIndexes: updatedSelectedIndexes,
    );

    if (updatedSelectedIndexes.length == 3) {
      final selectedNumbers =
          updatedSelectedIndexes.map((index) => safe.numbers[index]).toList();
      final sum = selectedNumbers.reduce((a, b) => a + b);

      if (sum == safe.targetSum) {
        safes[event.safeIndex] = safe.copyWith(
          isUnlocked: true,
          selectedIndexes: updatedSelectedIndexes,
        );
      } else {
        safes[event.safeIndex] = safe.copyWith(
          selectedIndexes: [],
        );
      }
    }

    emit(PenjumlahanLoadedState(safes: safes, remainingTime: _remainingTime));
    add(CheckWin());
  }

  void _onCheckWin(CheckWin event, Emitter<PenjumlahanState> emit) {
    final currentState = state as PenjumlahanLoadedState;
    final isAllSafesUnlocked =
        currentState.safes.every((safe) => safe.isUnlocked);

    if (isAllSafesUnlocked) {
      emit(PenjumlahanWinState());
    }
  }

  static List<PenjumlahanSafeState> _generateInitialSafes() {
    return GameData.generateSafes().map((data) {
      return PenjumlahanSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();
  }

  void _onRestartGame(
      PenjumlahanMode2Level3ResetEvent event, Emitter<PenjumlahanState> emit) {
    _timer.cancel();
    _remainingTime = _timeLimit;
    add(PenjumlahanMode2Level3StartTimer());

    final newSafes = GameData.generateSafes(4).map((data) {
      return PenjumlahanSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();

    emit(PenjumlahanLoadedState(
      safes: newSafes,
    ));
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
