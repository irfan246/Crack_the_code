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
  final List<int> selectedNumbers;
  final int targetSum;
  final bool isUnlocked;

  const PerkalianSafeState({
    required this.numbers,
    required this.correctNumbers,
    this.selectedNumbers = const [],
    required this.targetSum,
    this.isUnlocked = false,
  });

  PerkalianSafeState copyWith({
    List<int>? numbers,
    List<int>? correctNumbers,
    List<int>? selectedNumbers,
    int? targetSum,
    bool? isUnlocked,
  }) {
    return PerkalianSafeState(
      numbers: numbers ?? this.numbers,
      correctNumbers: correctNumbers ?? this.correctNumbers,
      selectedNumbers: selectedNumbers ?? this.selectedNumbers,
      targetSum: targetSum ?? this.targetSum,
      isUnlocked: isUnlocked ?? this.isUnlocked,
    );
  }

  @override
  List<Object?> get props =>
      [numbers, correctNumbers, selectedNumbers, targetSum, isUnlocked];
}
