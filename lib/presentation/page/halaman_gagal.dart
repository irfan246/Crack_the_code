import 'package:flutter/material.dart';

class HalamanGagal extends StatelessWidget {
  const HalamanGagal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 480,
                width: 582,
                child: Stack(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/emote_gagal.png'),
                      ),
                    ),
                    Positioned(
                      top: 380,
                      left: 225,
                      child: Text(
                        'YAHH',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          fontSize: 48,
                          color: Color(0xFF206430),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 425,
                      left: 125,
                      child: Text(
                        'KAMU GAGAL..',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          fontSize: 48,
                          color: Color(0xFF206430),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: 1200,
                height: 87,
                child: Wrap(
                  children: [
                    Text(
                      "KEGAGALAN BUKAN AKHIR, MELAINKAN AWAL DARI PELAJARAN BARU. JANGAN TAKUT GAGAL, TAKUTLAH JIKA ANDA BERHENTI MENCOBA. KARENA JUSTRU, KEGAGALAN ADALAH LANGKAH MENUJU KESUKSESAN YANG LEBIH BESAR. SEMANGAT!!",
                      style: TextStyle(
                        fontFamily: 'FLAWFULL',
                        fontSize: 32,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: const TextSpan(
                    text: '-',
                    children: [
                      TextSpan(
                          text: 'CRACK',
                          style: TextStyle(
                            fontFamily: 'Story_Milky',
                            color: Color(0xFFD95F59),
                            fontSize: 32,
                            wordSpacing: 67.39,
                          )),
                      TextSpan(
                          text: 'THE',
                          style: TextStyle(
                            fontFamily: 'Story_Milky',
                            color: Color(0xFFD95F59),
                            fontSize: 20,
                            wordSpacing: 42.12,
                          )),
                      TextSpan(
                          text: 'CODE',
                          style: TextStyle(
                            fontFamily: 'Story_Milky',
                            color: Color(0xFFD95F59),
                            fontSize: 32,
                            wordSpacing: 67.39,
                          ))
                    ],
                    style: TextStyle(
                      fontFamily: 'FLAWFULL',
                      fontSize: 64,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              'AYO COBA LAGI!!',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
