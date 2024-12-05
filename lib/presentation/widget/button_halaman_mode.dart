import 'package:flutter/material.dart';

class ButtonHalamanMode extends StatelessWidget {
  final String buttonText;
  final action;

  const ButtonHalamanMode(
      {super.key, required this.buttonText, required this.action});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(59, 247, 181, 177),
            offset: Offset(7, 9),
            blurRadius: 3.0,
          )
        ],
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(568, 116),
            backgroundColor: const Color(0xFFD95F59),
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
                fontSize: 70,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(6, 6),
                    blurRadius: 2,
                    color: Color.fromARGB(88, 0, 0, 0),
                  )
                ]),
          )),
    );
  }
}
