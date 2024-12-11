import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/data_penjumlahan.dart';
part 'penjumlahan_event.dart';
part 'penjumlahan_state.dart';

class PenjumlahanBlocMode1 extends Bloc<PenjumlahanEvent, PenjumlahanState> {
  PenjumlahanBlocMode1()
      : super(PenjumlahanLoadedState(safes: _generateInitialSafes())) {
    on<SelectNumber>(_onSelectNumber);
    on<CheckWin>(_onCheckWin);
    on<penjumlahanMode1ResetEvent>(_onRestartGame);
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

    emit(PenjumlahanLoadedState(safes: safes));
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
      penjumlahanMode1ResetEvent event, Emitter<PenjumlahanState> emit) {
    final newSafes = GameData.generateSafes(4).map((data) {
      return PenjumlahanSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();

    emit(PenjumlahanLoadedState(safes: newSafes));
  }
}
