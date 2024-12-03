import '../widget/button_pilih_mode.dart';
import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanPilihMode extends StatelessWidget {
  const HalamanPilihMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'PILIH MODE'),
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
            const SizedBox(
              width: 80,
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
