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
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF522258)),
      title: 'Crack The Code',
      initialRoute: '/',
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
