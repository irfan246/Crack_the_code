import '../widget/widget_appbar.dart';
import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';

class HalamanLevelMode2Penjumlahan extends StatelessWidget {
  const HalamanLevelMode2Penjumlahan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'MODE 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'LEVEL 1',
                action: () {
                  Navigator.pushNamed(context, '/level1Penjumlahan');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'LEVEL 2',
                action: () {
                  Navigator.pushNamed(context, '/level2Penjumlahan');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'LEVEL 3',
                action: () {
                  Navigator.pushNamed(context, '/level3Penjumlahan');
                }),
          ],
        ),
      ),
    );
  }
}
