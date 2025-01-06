import 'package:flutter/material.dart';

class ButtonPilihMode extends StatelessWidget {
  final String ButtonTextMode;
  final String ButtonTextDifficulty;
  final VoidCallback action;

  const ButtonPilihMode(
      {super.key,
      required this.ButtonTextMode,
      required this.action,
      required this.ButtonTextDifficulty});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenHeight * 0.004166),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(59, 247, 181, 177),
            offset: Offset(screenWidth * 0.00522, screenHeight * 0.009463),
            blurRadius: 3.0,
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD95F59),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.00625),
          ),
          fixedSize: Size(screenWidth * 0.199, screenHeight * 0.299),
        ),
        onPressed: action,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ButtonTextMode,
              style: TextStyle(
                fontSize: screenWidth * 0.038,
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: const Color.fromARGB(88, 0, 0, 0),
                    offset: Offset(screenWidth * 0.0022, screenHeight * 0.0038),
                  ),
                ],
              ),
            ),
            Text(
              ButtonTextDifficulty,
              style: TextStyle(
                fontSize: screenWidth * 0.015,
                fontFamily: 'FLAWFULL',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
