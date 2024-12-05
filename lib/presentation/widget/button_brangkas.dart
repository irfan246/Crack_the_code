import 'package:flutter/material.dart';

class ButtonBrangkas extends StatelessWidget {
  final buttonColor;
  final textColor;
  final String buttonText;
  final buttonTap;

  const ButtonBrangkas(
      {super.key,
      this.buttonColor,
      this.textColor,
      required this.buttonText,
      this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xFFFFB38E),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(3, 3),
              blurRadius: 4,
            ),
          ],
          border: Border.fromBorderSide(
            BorderSide(color: Colors.black, width: 1),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8C3061),
            ),
          ),
        ),
      ),
    );
  }
}
