import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCaraBermain1 extends StatelessWidget {
  const HalamanCaraBermain1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'CARA BERMAIN'),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MODE 1',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                fontSize: 64,
              ),
            ),
            Material(
              color: Color(0xFFD95F59),
              child: SizedBox(
                height: 539,
                width: 1283,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        '• Dalam mode 1 ada 2 pilihan yaitu penjumlahan dan pengurangan, lalu pilih salah satu dari 2 pilihan tersebut.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
