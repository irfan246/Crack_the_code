part of 'penjumlahan_bloc.dart';

abstract class PenjumlahanState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PenjumlahanInitialState extends PenjumlahanState {}

class PenjumlahanLoadedState extends PenjumlahanState {
  final List<PenjumlahanSafeState> safes;
  final bool isGameWon;

  PenjumlahanLoadedState({required this.safes, this.isGameWon = false});

  @override
  List<Object?> get props => [safes, isGameWon];
}

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

class PenjumlahanWinState extends PenjumlahanState {}

class PenjumlahanResetState extends PenjumlahanState {}
