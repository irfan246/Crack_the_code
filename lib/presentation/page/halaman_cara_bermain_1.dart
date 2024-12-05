import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class HalamanCaraBermain1 extends StatelessWidget {
  const HalamanCaraBermain1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppbar(title: 'CARA BERMAIN'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MODE 1',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                fontSize: 64,
              ),
            ),
            Stack(
              children: <Widget>[
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
                            '• Dalam mode 1 ada 2 pilihan yaitu penjumlahan dan pengurangan, lalu pilih salah satu dari 2 pilihan tersebut.',
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
                            '• Dalam setiap soal kalian akan diberi 4 gambar brangkas yang masing-masing sudah ada angka untuk membuka brangkas tesebut.',
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
                            '• Cara untuk dapat membuka itu dengan cara menjumlahkan atau mengalikan angka-angka yang sudah tersedia.',
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
                            '• Jumlahkan atau kalikan dengan cara tekan 3 tombol yang berisi angka yang sudah disediakan yang menurut kalian ketika dijumlahkan atau dikalikan hasilnya sama dengan kode yang sudah diberikan.',
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
                Positioned(
                    top: 567,
                    left: 900,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/caraBermain2');
                        },
                        child: const Row(
                          children: [
                            Text(
                              'Lanjut',
                              style: TextStyle(
                                fontFamily: 'FLAWFULL',
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                            Image(
                              image: AssetImage('assets/images/arrow_next.png'),
                              height: 87,
                              width: 68,
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
