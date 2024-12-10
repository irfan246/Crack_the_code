part of 'perkalian_bloc.dart';

abstract class PerkalianState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PerkalianInitialState extends PerkalianState {}

class PerkalianLoadedState extends PerkalianState {
  final List<PerkalianSafeState> safes;
  final bool isGameWon;

  PerkalianLoadedState({required this.safes, this.isGameWon = false});

  @override
  List<Object?> get props => [safes, isGameWon];
}

class PerkalianSafeState extends Equatable {
  final List<int> numbers;
  final List<int> correctNumbers;
  final List<int> selectedIndexes;
  final bool isUnlocked;
  final int targetSum;

  PerkalianSafeState({
    required this.numbers,
    required this.correctNumbers,
    this.selectedIndexes = const [],
    this.isUnlocked = false,
    required this.targetSum,
  });

  PerkalianSafeState copyWith({
    List<int>? numbers,
    List<int>? correctNumbers,
    List<int>? selectedIndexes,
    bool? isUnlocked,
    int? targetSum,
  }) {
    return PerkalianSafeState(
      numbers: numbers ?? this.numbers,
      correctNumbers: correctNumbers ?? this.correctNumbers,
      selectedIndexes: selectedIndexes ?? this.selectedIndexes,
      isUnlocked: isUnlocked ?? this.isUnlocked,
      targetSum: targetSum ?? this.targetSum,
    );
  }

  @override
  List<Object?> get props => [
        numbers,
        correctNumbers,
        targetSum,
        selectedIndexes,
        isUnlocked,
      ];
}

class PerkalianWinState extends PerkalianState {}

class PerkalianResetState extends PerkalianState {}
