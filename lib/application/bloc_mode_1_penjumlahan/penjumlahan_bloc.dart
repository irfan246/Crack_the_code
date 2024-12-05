import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'penjumlahan_event.dart';
part 'penjumlahan_state.dart';
part '../../domain/data_penjumlahan.dart';
part '../../domain/model_brangkas.dart';

class summationCrackTheCodeBloc
    extends Bloc<CrackTheCodeEvent, CrackTheCodeState> {
  summationCrackTheCodeBloc() : super(InitialState()) {
    on<LoadSafeEvent>(_onLoadSafe);
    on<SelectNumberEvent>(_onSelectNumber);
    on<SubmitNumbersEvent>(_onSubmitNumbers);
  }

  void _onLoadSafe(LoadSafeEvent event, Emitter<CrackTheCodeState> emit) {
    final safeData = GameData.safes[Random().nextInt(GameData.safes.length)];

    final correctNumbers = List<int>.from(safeData['correctNumbers']);
    final targetSum = safeData['targetSum'];

    final randomNumbers = List.generate(6, (index) => Random().nextInt(20));
    final allNumbers = [...correctNumbers, ...randomNumbers]..shuffle();

    final safe = Safe(
      targetSum: targetSum,
      correctNumbers: correctNumbers,
      allNumbers: allNumbers,
    );

    emit(SafeLoadedState(safe: safe));
  }

  void _onSelectNumber(
      SelectNumberEvent event, Emitter<CrackTheCodeState> emit) {
    if (state is SafeLoadedState) {
      final currentState = state as SafeLoadedState;
      final selectedNumbers = List<int>.from(currentState.selectedNumbers);

      if (selectedNumbers.length < 3) {
        selectedNumbers.add(event.number);
        emit(SafeLoadedState(
            safe: currentState.safe, selectedNumbers: selectedNumbers));
      }
    }
  }

  void _onSubmitNumbers(
      SubmitNumbersEvent event, Emitter<CrackTheCodeState> emit) {
    if (state is SafeLoadedState) {
      final currentState = state as SafeLoadedState;

      final sum = currentState.selectedNumbers.fold(0, (a, b) => a + b);

      if (sum == currentState.safe.targetSum) {
        emit(SuccessState());
      } else {
        emit(FailureState());
      }
    }
  }
}
