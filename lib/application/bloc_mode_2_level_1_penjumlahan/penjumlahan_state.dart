part of 'penjumlahan_bloc.dart';

abstract class PenjumlahanState extends Equatable {
  const PenjumlahanState();

  @override
  List<Object?> get props => [];
}

class PenjumlahanInitial extends PenjumlahanState {}

class PenjumlahanLoadedState extends PenjumlahanState {
  final List<PenjumlahanSafeState> safes;
  final int remainingTime;
  final bool isGameWon;

  const PenjumlahanLoadedState({
    required this.safes,
    this.remainingTime = 240,
    this.isGameWon = false,
  });

  PenjumlahanLoadedState copyWith({
    List<PenjumlahanSafeState>? safes,
    int? remainingTime,
    bool? isGameWon,
  }) {
    return PenjumlahanLoadedState(
      safes: safes ?? this.safes,
      remainingTime: remainingTime ?? this.remainingTime,
      isGameWon: isGameWon ?? this.isGameWon,
    );
  }

  @override
  List<Object?> get props => [safes, remainingTime, isGameWon];
}

class PenjumlahanWinState extends PenjumlahanState {}

class PenjumlahanFailedState extends PenjumlahanState {}

class PenjumlahanSafeState extends Equatable {
  final List<int> numbers;
  final List<int> correctNumbers;
  final List<int> selectedIndexes;
  final bool isUnlocked;
  final int targetSum;

  PenjumlahanSafeState({
    required this.numbers,
    required this.correctNumbers,
    this.selectedIndexes = const [],
    this.isUnlocked = false,
    required this.targetSum,
  });

  PenjumlahanSafeState copyWith({
    List<int>? numbers,
    List<int>? correctNumbers,
    List<int>? selectedIndexes,
    bool? isUnlocked,
    int? targetSum,
  }) {
    return PenjumlahanSafeState(
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
