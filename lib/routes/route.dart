import '../presentation/page/halaman_cara_bermain_1.dart';
import '../presentation/page/halaman_mode_1_penjumlahan.dart';
import '../presentation/page/halaman_mode_1_perkalian.dart';
import '../presentation/page/halaman_mode_2.dart';
import '../presentation/page/halaman_mode_1.dart';
import '../presentation/page/halaman_depan.dart';
import '../presentation/page/halaman_pilih_mode.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HalamanDepan());
      case '/pilihMode':
        return MaterialPageRoute(builder: (_) => const HalamanPilihMode());
      case '/mode1':
        return MaterialPageRoute(builder: (_) => const HalamanMode1());
      case '/mode2':
        return MaterialPageRoute(builder: (_) => const HalamanMode2());
      case '/penjumlahanMode1':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode1Penjumlahan());
      case '/perkalianMode1':
        return MaterialPageRoute(builder: (_) => const HalamanMode1Perkalian());
      case '/caraBermain1':
        return MaterialPageRoute(builder: (_) => const HalamanCaraBermain1());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text("Page not found!")),
      ),
    );
  }
}
