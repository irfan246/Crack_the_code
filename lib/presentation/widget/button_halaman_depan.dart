import 'package:flutter/material.dart';

class ButtonHalamanDepan extends StatelessWidget {
  final String buttonText;
  final action;

  ButtonHalamanDepan({required this.buttonText, required this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(524, 99),
          backgroundColor: const Color(0xFF8C3061),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadowColor: Colors.black.withOpacity(1),
          elevation: 10,
        ),
        onPressed: action,
        child: Text(
          buttonText,
          style: const TextStyle(
              fontFamily: 'FLAWFULL',
              fontSize: 64,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(6, 6),
                  blurRadius: 2,
                  color: Color.fromARGB(88, 0, 0, 0),
                )
              ]),
        ));
  }
}
