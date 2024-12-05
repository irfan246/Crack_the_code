import '../widget/widget_brangkas.dart';
import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanMode1Penjumlahan extends StatelessWidget {
  const HalamanMode1Penjumlahan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'MODE 1'),
      body: Center(
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
                child: WidgetBrangkas(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
