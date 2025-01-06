import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCaraBermain2 extends StatelessWidget {
  const HalamanCaraBermain2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: WidgetAppbar(
        title: 'CARA BERMAIN',
        preferredSizeHeight: screenHeight * 0.1362346,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MODE 2',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                fontSize: screenWidth * 0.0333,
              ),
            ),
            Material(
              color: const Color(0xFFD95F59),
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: screenWidth * 0.66823,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: screenHeight * 0.0075686,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• Dalam mode 2 terdapat beberapa level.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: 0,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• Dalam setiap level ada 2 pilihan yaitu penjumlahan dan perkalian.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: 0,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• Dalam setiap soal akan diberikan 4 berangkas yang masing-masing sudah diberi angka untuk membuka brangkas tersebut.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: 0,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• Cara pengerjaan setiap soalnya sama dengan mode 1, namun di mode 2 pengerjaannya diberikan waktu.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: 0,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• Level 1 diberi waktu 4 menit, level 2 diberi waktu 2 menit, level 3 diberi waktu 1 menit.',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.004166,
                        right: screenWidth * 0.004166,
                        top: 0,
                        bottom: screenHeight * 0.0075686,
                      ),
                      child: Text(
                        '• SELAMAT BELAJAR SAMBIL BERMAIN!!',
                        style: TextStyle(
                          fontFamily: 'Spooky_Scary_Creepy',
                          fontSize: screenWidth * 0.020833,
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
