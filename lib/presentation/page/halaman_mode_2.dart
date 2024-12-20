import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';
import '../widget/widget_appbar.dart';

class HalamanMode2 extends StatelessWidget {
  const HalamanMode2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppbar(title: 'MODE 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'Penjumlahan',
                action: () {
                  Navigator.pushNamed(context, '/levelPenjumlahan');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'Perkalian',
                action: () {
                  Navigator.pushNamed(context, '/levelPerkalian');
                }),
          ],
        ),
      ),
    );
  }
}
