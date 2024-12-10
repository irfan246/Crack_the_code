import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/data_perkalian.dart';
part 'perkalian_event.dart';
part 'perkalian_state.dart';

class PerkalianBlocMode1 extends Bloc<PerkalianEvent, PerkalianState> {
  PerkalianBlocMode1()
      : super(PerkalianLoadedState(safes: _generateInitialSafes())) {
    on<SelectNumber>(_onSelectNumber);
    on<CheckWin>(_onCheckWin);
    on<perkalianMode1ResetEvent>(_onRestartGame);
  }

  void _onSelectNumber(SelectNumber event, Emitter<PerkalianState> emit) {
    final currentState = state as PerkalianLoadedState;
    final safes = List<PerkalianSafeState>.from(currentState.safes);

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

      if (sum == safe.targetSum &&
          _isCorrectCombination(selectedNumbers, safe.correctNumbers)) {
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

    emit(PerkalianLoadedState(safes: safes));
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
      perkalianMode1ResetEvent event, Emitter<PerkalianState> emit) {
    final newSafes = GameData.generateSafes(4).map((data) {
      return PerkalianSafeState(
        numbers: List<int>.from(data['allNumbers']),
        correctNumbers: List<int>.from(data['correctNumbers']),
        targetSum: data['targetSum'],
      );
    }).toList();

    emit(PerkalianLoadedState(safes: newSafes));
  }
}
