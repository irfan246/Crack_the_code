import 'package:flutter/material.dart';

import '../widget/widget_appbar.dart';
import '../widget/widget_brangkas.dart';

class HalamanMode2PerkalianLevel3 extends StatelessWidget {
  const HalamanMode2PerkalianLevel3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'MODE 2'),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 1700,
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Color(0xFFFE9994), width: 1)),
              color: const Color(0xFF8C3061),
              child: const SizedBox(
                width: 130,
                child: Text(
                  'WAKTU : 1.00',
                  style: TextStyle(
                    fontFamily: 'FLAWFULL',
                    fontSize: 20,
                    color: Color(0xFFFE9994),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 766,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: List.generate(
                  4,
                  (index) => SizedBox(
                    width: 352,
                    height: 320,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
