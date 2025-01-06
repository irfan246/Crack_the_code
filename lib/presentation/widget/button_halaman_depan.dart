import 'package:flutter/material.dart';

class ButtonHalamanDepan extends StatelessWidget {
  final String buttonText;
  final action;

  const ButtonHalamanDepan(
      {super.key, required this.buttonText, required this.action});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(screenWidth * 0.273, screenHeight * 0.09366),
          backgroundColor: const Color(0xFF8C3061),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.014166),
          ),
          shadowColor: Colors.black.withAlpha(255),
          elevation: 10,
        ),
        onPressed: action,
        child: Text(
          buttonText,
          style: TextStyle(
              fontFamily: 'FLAWFULL',
              fontSize: screenWidth * 0.0333,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(screenWidth * 0.003125, screenHeight * 0.0058),
                  blurRadius: 2,
                  color: const Color.fromARGB(88, 0, 0, 0),
                )
              ]),
        ));
  }
}
