import 'package:flutter/material.dart';

class ButtonHalamanMode extends StatelessWidget {
  final String buttonText;
  final VoidCallback action;

  const ButtonHalamanMode(
      {super.key, required this.buttonText, required this.action});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.004166),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(59, 247, 181, 177),
            offset: Offset(screenWidth * 0.003646, screenHeight * 0.00851466),
            blurRadius: 3.0,
          )
        ],
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(screenWidth * 0.296, screenHeight * 0.1097),
            backgroundColor: const Color(0xFFD95F59),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.0104166),
            ),
            shadowColor: Colors.black.withAlpha(255),
            elevation: 10,
          ),
          onPressed: action,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: 'FLAWFULL',
                fontSize: screenWidth * 0.03646,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset:
                        Offset(screenWidth * 0.003125, screenHeight * 0.0058),
                    blurRadius: 2,
                    color: const Color.fromARGB(88, 0, 0, 0),
                  )
                ]),
          )),
    );
  }
}
