import '../widget/widget_appbar.dart';
import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';

class HalamanLevelMode2Perkalian extends StatelessWidget {
  const HalamanLevelMode2Perkalian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppbar(title: 'LEVEL'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'LEVEL 1',
                action: () {
                  Navigator.pushNamed(context, '/level1Perkalian');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'LEVEL 2',
                action: () {
                  Navigator.pushNamed(context, '/level2Perkalian');
                }),
            const SizedBox(
              height: 40,
            ),
            ButtonHalamanMode(
                buttonText: 'LEVEL 3',
                action: () {
                  Navigator.pushNamed(context, '/level3Perkalian');
                }),
          ],
        ),
      ),
    );
  }
}
