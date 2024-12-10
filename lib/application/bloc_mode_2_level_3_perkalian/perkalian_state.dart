part of 'perkalian_bloc.dart';

abstract class PerkalianState extends Equatable {
  const PerkalianState();

  @override
  List<Object?> get props => [];
}

class PerkalianInitial extends PerkalianState {}

class PerkalianLoadedState extends PerkalianState {
  final List<PerkalianSafeState> safes;
  final int remainingTime;
  final bool isGameWon;

  const PerkalianLoadedState({
    required this.safes,
    this.remainingTime = 240,
    this.isGameWon = false,
  });

  PerkalianLoadedState copyWith({
    List<PerkalianSafeState>? safes,
    int? remainingTime,
    bool? isGameWon,
  }) {
    return PerkalianLoadedState(
      safes: safes ?? this.safes,
      remainingTime: remainingTime ?? this.remainingTime,
      isGameWon: isGameWon ?? this.isGameWon,
    );
  }

  @override
  List<Object?> get props => [safes, remainingTime, isGameWon];
}

class PerkalianWinState extends PerkalianState {}

class PerkalianFailedState extends PerkalianState {}

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
