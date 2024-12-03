import 'package:crack_the_code/presentation/widget/widget_brangkas.dart';

import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanMode1Penjumlahan extends StatelessWidget {
  const HalamanMode1Penjumlahan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'MODE 1'),
      body: WidgetBrangkas(),
    );
  }
}
