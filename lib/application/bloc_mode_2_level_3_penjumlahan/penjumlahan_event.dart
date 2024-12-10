part of 'penjumlahan_bloc.dart';

abstract class PenjumlahanEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectNumber extends PenjumlahanEvent {
  final int safeIndex;
  final int selectedIndex;

  SelectNumber({required this.safeIndex, required this.selectedIndex});

  @override
  List<Object?> get props => [safeIndex, selectedIndex];
}

class CheckWin extends PenjumlahanEvent {}

class PenjumlahanMode2Level3ResetEvent extends PenjumlahanEvent {}

class PenjumlahanMode2Level3StartTimer extends PenjumlahanEvent {}

class UpdateTime extends PenjumlahanEvent {}

class TimeOut extends PenjumlahanEvent {}
