import 'package:flutter/material.dart';

class HalamanBerhasil extends StatelessWidget {
  const HalamanBerhasil({super.key});

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
                        image: AssetImage('assets/images/emote_berhasil.png'),
                      ),
                    ),
                    Positioned(
                      top: 380,
                      left: 120,
                      child: Text(
                        'YEAY SELAMAT',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          fontSize: 48,
                          color: Color(0xFF206430),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 425,
                      left: 90,
                      child: Text(
                        'KAMU BERHASIL!!',
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
                width: 791,
                height: 93,
                child: Wrap(
                  children: [
                    Text(
                      "JANGAN MUDAH PUAS DENGAN KEBERHASILAN. KARNA MASIH ADA KEBERHASILAN-KEBERHASILAN LAIN YANG HARUS KALIAN RAIH. SEMANGAT!!",
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
                height: 25,
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
    );
  }
}
