part of 'penjumlahan_bloc.dart';

abstract class CrackTheCodeState {}

class InitialState extends CrackTheCodeState {}

class SafeLoadedState extends CrackTheCodeState {
  final Safe safe;
  final List<int> selectedNumbers;

  SafeLoadedState({required this.safe, this.selectedNumbers = const []});
}

class SuccessState extends CrackTheCodeState {}

class FailureState extends CrackTheCodeState {}
