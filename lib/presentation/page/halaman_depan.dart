import '../widget/button_halaman_depan.dart';
import 'package:flutter/material.dart';

class HalamanDepan extends StatelessWidget {
  const HalamanDepan({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: 'CRACK',
                  style: TextStyle(
                    fontFamily: 'Story_Milky',
                    color: const Color(0xFFD95F59),
                    fontSize: screenWidth * 0.033,
                    wordSpacing: screenWidth * 0.0352,
                  ),
                  children: [
                    TextSpan(
                      text: 'The',
                      style: TextStyle(
                        fontSize: screenWidth * 0.022,
                        wordSpacing: screenWidth * 0.0104166,
                      ),
                    ),
                    TextSpan(
                        text: 'CODE',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          color: const Color(0xFFD95F59),
                          fontSize: screenWidth * 0.033,
                          wordSpacing: screenWidth * 0.0352,
                        )),
                  ]),
            ),
            SizedBox(
              height: screenHeight * 0.05676,
            ),
            ButtonHalamanDepan(
              buttonText: 'MAINKAN',
              action: () {
                Navigator.pushNamed(context, '/pilihMode');
              },
            ),
            SizedBox(
              height: screenHeight * 0.019,
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
