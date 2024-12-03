import '../widget/button_halaman_depan.dart';
import 'package:flutter/material.dart';

class HalamanDepan extends StatelessWidget {
  const HalamanDepan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: const TextSpan(
                  text: 'CRACK',
                  style: TextStyle(
                    fontFamily: 'Story_Milky',
                    color: Color(0xFFD95F59),
                    fontSize: 64,
                    wordSpacing: 67.39,
                  ),
                  children: [
                    TextSpan(
                      text: 'The',
                      style: TextStyle(
                        fontSize: 40,
                        wordSpacing: 42.12,
                      ),
                    ),
                    TextSpan(text: 'CODE'),
                  ]),
            ),
            const SizedBox(
              height: 60,
            ),
            ButtonHalamanDepan(
              buttonText: 'MAINKAN',
              action: () {
                Navigator.pushNamed(context, '/pilihMode');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonHalamanDepan(
              buttonText: 'CARA BERMAIN',
              action: () {
                Navigator.pushNamed(context, '/caraBermain1');
              },
            ),
          ],
        ),
      ),
    );
  }
}
