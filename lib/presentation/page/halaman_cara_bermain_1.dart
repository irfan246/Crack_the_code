import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCaraBermain1 extends StatelessWidget {
  const HalamanCaraBermain1({super.key});

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
              'MODE 1',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                fontSize: screenWidth * 0.0333,
              ),
            ),
            Stack(
              children: <Widget>[
                Material(
                  color: const Color(0xFFD95F59),
                  borderRadius: BorderRadius.circular(screenWidth * 0.004166),
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
                            '• Dalam mode 1 ada 2 pilihan yaitu penjumlahan dan pengurangan, lalu pilih salah satu dari 2 pilihan tersebut.',
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
                            '• Dalam setiap soal kalian akan diberi 4 gambar brangkas yang masing-masing sudah ada angka untuk membuka brangkas tesebut.',
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
                            '• Cara untuk dapat membuka itu dengan cara menjumlahkan atau mengalikan angka-angka yang sudah tersedia.',
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
                            '• Jumlahkan atau kalikan dengan cara tekan 3 tombol yang berisi angka yang sudah disediakan yang menurut kalian ketika dijumlahkan atau dikalikan hasilnya sama dengan kode yang sudah diberikan.',
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
                Positioned(
                    top: screenHeight * 0.486425,
                    left: screenWidth * 0.46875,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/caraBermain2');
                        },
                        child: Row(
                          children: [
                            Text(
                              'Lanjut',
                              style: TextStyle(
                                fontFamily: 'FLAWFULL',
                                fontSize: screenWidth * 0.03125,
                                color: Colors.white,
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/arrow_next.png'),
                              height: screenHeight * 0.08232,
                              width: screenWidth * 0.0328125,
                            )
                          ],
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
