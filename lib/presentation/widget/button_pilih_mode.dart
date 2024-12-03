import 'package:flutter/material.dart';

class ButtonPilihMode extends StatelessWidget {
  final String ButtonTextMode;
  final String ButtonTextDifficulty;
  final action;

  ButtonPilihMode(
      {required this.ButtonTextMode,
      required this.action,
      required this.ButtonTextDifficulty});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(59, 247, 181, 177),
            offset: Offset(10, 10),
            blurRadius: 3.0,
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD95F59),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          fixedSize: const Size(382, 316),
        ),
        onPressed: action,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ButtonTextMode,
              style: const TextStyle(
                fontSize: 96,
                fontFamily: 'FLAWFULL',
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Color.fromARGB(88, 0, 0, 0),
                    offset: Offset(4, 4),
                  ),
                ],
              ),
            ),
            Text(
              ButtonTextDifficulty,
              style: const TextStyle(
                fontSize: 48,
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
