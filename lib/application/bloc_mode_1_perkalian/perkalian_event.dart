part of 'perkalian_bloc.dart';

abstract class PerkalianEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectNumber extends PerkalianEvent {
  final int safeIndex;
  final int selectedIndex;

  SelectNumber({required this.safeIndex, required this.selectedIndex});

  @override
  List<Object?> get props => [safeIndex, selectedIndex];
}

class CheckWin extends PerkalianEvent {}

class perkalianMode1ResetEvent extends PerkalianEvent {}
