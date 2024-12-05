import '../presentation/page/halaman_mode_2_perkalian_level_1.dart';
import '../presentation/page/halaman_level_mode_2_perkalian.dart';
import '../presentation/page/halaman_berhasil.dart';
import '../presentation/page/halaman_gagal.dart';
import '../presentation/page/halaman_mode_2_penjumlahan_level_1.dart';
import '../presentation/page/halaman_cara_bermain_1.dart';
import '../presentation/page/halaman_cara_bermain_2.dart';
import '../presentation/page/halaman_level_mode_2_penjumlahan.dart';
import '../presentation/page/halaman_mode_1_penjumlahan.dart';
import '../presentation/page/halaman_mode_1_perkalian.dart';
import '../presentation/page/halaman_mode_2.dart';
import '../presentation/page/halaman_mode_1.dart';
import '../presentation/page/halaman_depan.dart';
import '../presentation/page/halaman_mode_2_penjumlahan_level_2.dart';
import '../presentation/page/halaman_mode_2_penjumlahan_level_3.dart';
import '../presentation/page/halaman_mode_2_perkalian_level_2.dart';
import '../presentation/page/halaman_mode_2_perkalian_level_3.dart';
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
      case '/caraBermain2':
        return MaterialPageRoute(builder: (_) => const HalamanCaraBermain2());
      case '/levelPenjumlahan':
        return MaterialPageRoute(
            builder: (_) => const HalamanLevelMode2Penjumlahan());
      case '/levelPerkalian':
        return MaterialPageRoute(
            builder: (_) => const HalamanLevelMode2Perkalian());
      case '/level1Penjumlahan':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PenjumlahanLevel1());
      case '/level2Penjumlahan':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PenjumlahanLevel2());
      case '/level3Penjumlahan':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PenjumlahanLevel3());
      case '/level1Perkalian':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PerkalianLevel1());
      case '/level2Perkalian':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PerkalianLevel2());
      case '/level3Perkalian':
        return MaterialPageRoute(
            builder: (_) => const HalamanMode2PerkalianLevel3());
      case '/berhasil':
        return MaterialPageRoute(builder: (_) => const HalamanBerhasil());
      case '/gagal':
        return MaterialPageRoute(builder: (_) => const HalamanGagal());
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
