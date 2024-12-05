part of 'penjumlahan_bloc.dart';

abstract class CrackTheCodeEvent {}

class LoadSafeEvent extends CrackTheCodeEvent {
  final int safeId;

  LoadSafeEvent(this.safeId);
}

class SelectNumberEvent extends CrackTheCodeEvent {
  final int number;

  SelectNumberEvent(this.number);
}
