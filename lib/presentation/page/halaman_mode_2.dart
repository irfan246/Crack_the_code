import '../widget/button_halaman_mode.dart';
import 'package:flutter/material.dart';
import '../widget/widget_appbar.dart';

class HalamanMode2 extends StatelessWidget {
  const HalamanMode2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: WidgetAppbar(
        title: 'MODE 2',
        preferredSizeHeight: screenHeight * 0.109,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHalamanMode(
                buttonText: 'Penjumlahan',
                action: () {
                  Navigator.pushNamed(context, '/levelPenjumlahan');
                }),
            SizedBox(
              height: screenHeight * 0.037843,
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
