import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/data_Perkalian.dart';
part 'perkalian_event.dart';
part 'perkalian_state.dart';

class PerkalianBlocMode2Level2 extends Bloc<PerkalianEvent, PerkalianState> {
  static const int _timeLimit = 120;
  late Timer _timer;
  int _remainingTime = _timeLimit;

  PerkalianBlocMode2Level2()
      : super(PerkalianLoadedState(safes: _generateInitialSafes())) {
    on<PerkalianMode2Level2StartTimer>(_onStartTimer);
    on<SelectNumber>(_onSelectNumber);
    on<CheckWin>(_onCheckWin);
    on<PerkalianMode2Level2ResetEvent>(_onRestartGame);
    on<UpdateTime>(_onUpdateTime);
    on<TimeOut>(_onTimeOut);
  }

  void _onStartTimer(
      PerkalianMode2Level2StartTimer event, Emitter<PerkalianState> emit) {
    // Initialize game state
    emit(PerkalianLoadedState(
      safes: _generateInitialSafes(),
      remainingTime: _remainingTime,
    ));

    // Start countdown timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(UpdateTime());
    });
  }

  void _onUpdateTime(UpdateTime event, Emitter<PerkalianState> emit) {
    if (_remainingTime > 0) {
      _remainingTime--;

      final currentState = state;
      if (currentState is PerkalianLoadedState) {
        emit(currentState.copyWith(remainingTime: _remainingTime));
      }
    } else {
      add(TimeOut());
    }
  }

  void _onTimeOut(TimeOut event, Emitter<PerkalianState> emit) {
    _timer.cancel();
    emit(PerkalianFailedState());
  }

  void _onSelectNumber(SelectNumber event, Emitter<PerkalianState> emit) {
    final currentState = state as PerkalianLoadedState;
    final safes = List<PerkalianSafeState>.from(currentState.safes);

    final safe = safes[event.safeIndex];
    if (safe.isUnlocked) return;

    final updatedSelectedNumbers = List<int>.from(safe.selectedNumbers);

    if (updatedSelectedNumbers.length < 3) {
      updatedSelectedNumbers.add(event.selectedNumber);

      safes[event.safeIndex] = safe.copyWith(
        selectedNumbers: updatedSelectedNumbers,
      );

      if (updatedSelectedNumbers.length == 3) {
        final sum = updatedSelectedNumbers.reduce((a, b) => a * b);

        if (sum == safe.targetSum &&
            _isCorrectCombination(
                updatedSelectedNumbers, safe.correctNumbers)) {
          safes[event.safeIndex] = safe.copyWith(
            isUnlocked: true,
            selectedNumbers: updatedSelectedNumbers,
          );
        } else {
          safes[event.safeIndex] = safe.copyWith(
            selectedNumbers: [],
          );
        }
      }
    }

    final isGameWon = safes.every((safe) => safe.isUnlocked);

    emit(PerkalianLoadedState(
      safes: safes,
      isGameWon: isGameWon,
    ));
    add(CheckWin());
  }

  void _onCheckWin(CheckWin event, Emitter<PerkalianState> emit) {
    final currentState = state as PerkalianLoadedState;
    final isAllSafesUnlocked =
        currentState.safes.every((safe) => safe.isUnlocked);

    if (isAllSafesUnlocked) {
      emit(PerkalianWinState());
    }
  }

  static bool _isCorrectCombination(
      List<int> selectedNumbers, List<int> correctNumbers) {
    return Set.from(selectedNumbers).containsAll(correctNumbers);
  }

  static List<PerkalianSafeState> _generateInitialSafes() {
    return GameData.generateSafes().map((data) {
      return PerkalianSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();
  }

  void _onRestartGame(
      PerkalianMode2Level2ResetEvent event, Emitter<PerkalianState> emit) {
    _timer.cancel();
    _remainingTime = _timeLimit;
    add(PerkalianMode2Level2StartTimer());

    final newSafes = GameData.generateSafes(4).map((data) {
      return PerkalianSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();

    emit(PerkalianLoadedState(
      safes: newSafes,
    ));
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
