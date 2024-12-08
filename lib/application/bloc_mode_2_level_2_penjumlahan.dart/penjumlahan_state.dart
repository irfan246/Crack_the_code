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
  final List<int> selectedNumbers;
  final int targetSum;
  final bool isUnlocked;

  const PenjumlahanSafeState({
    required this.numbers,
    required this.correctNumbers,
    this.selectedNumbers = const [],
    required this.targetSum,
    this.isUnlocked = false,
  });

  PenjumlahanSafeState copyWith({
    List<int>? numbers,
    List<int>? correctNumbers,
    List<int>? selectedNumbers,
    int? targetSum,
    bool? isUnlocked,
  }) {
    return PenjumlahanSafeState(
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
