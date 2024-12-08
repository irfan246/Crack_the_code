part of 'perkalian_bloc.dart';

abstract class PerkalianEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectNumber extends PerkalianEvent {
  final int safeIndex;
  final int selectedNumber;

  SelectNumber({required this.safeIndex, required this.selectedNumber});

  @override
  List<Object?> get props => [safeIndex, selectedNumber];
}

class CheckWin extends PerkalianEvent {}

class PerkalianMode2Level1ResetEvent extends PerkalianEvent {}

class PerkalianMode2Level1StartTimer extends PerkalianEvent {}

class UpdateTime extends PerkalianEvent {}

class TimeOut extends PerkalianEvent {}
