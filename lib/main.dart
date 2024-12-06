import 'package:crack_the_code/application/bloc_mode_1_perkalian/perkalian_bloc.dart';

import '../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => PenjumlahanBlocMode1(),
    ),
    BlocProvider(
      create: (context) => PerkalianBlocMode1(),
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
