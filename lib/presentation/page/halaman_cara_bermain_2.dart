import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCaraBermain2 extends StatelessWidget {
  const HalamanCaraBermain2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'CARA BERMAIN'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MODE 2',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                fontSize: 64,
              ),
            ),
            Material(
              color: const Color(0xFFD95F59),
              borderRadius: BorderRadius.circular(8),
              child: const SizedBox(
                width: 1283,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text(
                        '• Dalam mode 2 terdapat beberapa level.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 0,
                        bottom: 8,
                      ),
                      child: Text(
                        '• Dalam setiap level ada 2 pilihan yaitu penjumlahan dan perkalian.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 0,
                        bottom: 8,
                      ),
                      child: Text(
                        '• Dalam setiap soal akan diberikan 4 berangkas yang masing-masing sudah diberi angka untuk membuka brangkas tersebut.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 0,
                        bottom: 8,
                      ),
                      child: Text(
                        '• Cara pengerjaan setiap soalnya sama dengan mode 1, namun di mode 2 pengerjaannya diberikan waktu.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 0,
                        bottom: 8,
                      ),
                      child: Text(
                        '• Level 1 diberi waktu 4 menit, level 2 diberi waktu 2 menit, level 3 diberi waktu 1 menit.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 0,
                        bottom: 8,
                      ),
                      child: Text(
                        '• SELAMAT BELAJAR SAMBIL BERMAIN!!',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
