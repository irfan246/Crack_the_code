import '../widget/button_pilih_mode.dart';
import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanPilihMode extends StatelessWidget {
  const HalamanPilihMode({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: WidgetAppbar(
        title: 'PILIH MODE',
        preferredSizeHeight: screenHeight * 0.109,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPilihMode(
              ButtonTextMode: 'MODE 1',
              ButtonTextDifficulty: '(MUDAH)',
              action: () {
                Navigator.pushNamed(context, '/mode1');
              },
            ),
            SizedBox(
              width: screenWidth * 0.041666,
            ),
            ButtonPilihMode(
              ButtonTextMode: 'MODE 2',
              ButtonTextDifficulty: '(SULIT)',
              action: () {
                Navigator.pushNamed(context, '/mode2');
              },
            )
          ],
        ),
      ),
    );
  }
}
