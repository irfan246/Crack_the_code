import '../widget/widget_appbar.dart';
import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';

class HalamanMode1 extends StatelessWidget {
  const HalamanMode1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppbar(title: 'MODE 1'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'Penjumlahan',
                action: () {
                  Navigator.pushNamed(context, '/penjumlahanMode1');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'Perkalian',
                action: () {
                  Navigator.pushNamed(context, '/perkalianMode1');
                }),
          ],
        ),
      ),
    );
  }
}
