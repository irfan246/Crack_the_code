import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void addEventToBloc<T extends Bloc<dynamic, dynamic>>(
    BuildContext context, dynamic event) {
  context.read<T>().add(event);
}
