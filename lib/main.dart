import '../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => summationCrackTheCodeBloc()..add(LoadSafeEvent()),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF522258)),
        initialRoute: '/',
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}
