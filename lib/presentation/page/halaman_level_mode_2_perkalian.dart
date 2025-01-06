import '../widget/widget_appbar.dart';
import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';

class HalamanLevelMode2Perkalian extends StatelessWidget {
  const HalamanLevelMode2Perkalian({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: WidgetAppbar(
        title: 'LEVEL',
        preferredSizeHeight: screenHeight * 0.109,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'LEVEL 1',
                action: () {
                  Navigator.pushNamed(context, '/level1Perkalian');
                }),
            SizedBox(
              height: screenHeight * 0.037843,
            ),
            ButtonHalamanMode(
                buttonText: 'LEVEL 2',
                action: () {
                  Navigator.pushNamed(context, '/level2Perkalian');
                }),
            SizedBox(
              height: screenHeight * 0.037843,
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
