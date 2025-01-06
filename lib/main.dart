import 'package:crack_the_code/application/bloc_mode_2_level_1_perkalian/perkalian_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_2_penjumlahan.dart/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_2_perkalian/perkalian_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_3_penjumlahan/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_3_perkalian/perkalian_bloc.dart';
import 'package:flutter/services.dart';

import '../application/bloc_mode_1_perkalian/perkalian_bloc.dart';
import '../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import '../routes/route.dart';
import 'application/bloc_mode_2_level_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => PenjumlahanBlocMode1(),
    ),
    BlocProvider(
      create: (context) => PerkalianBlocMode1(),
    ),
    BlocProvider(
      create: (context) =>
          PenjumlahanBlocMode2Level1()..add(PenjumlahanMode2Level1StartTimer()),
    ),
    BlocProvider(
      create: (context) =>
          PenjumlahanBlocMode2Level2()..add(PenjumlahanMode2Level2StartTimer()),
    ),
    BlocProvider(
      create: (context) =>
          PenjumlahanBlocMode2Level3()..add(PenjumlahanMode2Level3StartTimer()),
    ),
    BlocProvider(
      create: (context) =>
          PerkalianBlocMode2Level1()..add(PerkalianMode2Level1StartTimer()),
    ),
    BlocProvider(
      create: (context) =>
          PerkalianBlocMode2Level2()..add(PerkalianMode2Level2StartTimer()),
    ),
    BlocProvider(
      create: (context) =>
          PerkalianBlocMode2Level3()..add(PerkalianMode2Level3StartTimer()),
    )
  ], child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF522258)),
      initialRoute: '/',
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
