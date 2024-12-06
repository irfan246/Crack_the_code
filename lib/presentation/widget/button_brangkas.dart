import 'package:flutter/material.dart';

class ButtonBrangkas extends StatelessWidget {
  final String buttonText;
  final bool isSelected;
  final VoidCallback? buttonTap;

  const ButtonBrangkas(
      {super.key,
      required this.buttonText,
      this.buttonTap,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : const Color(0xFFFFB38E),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(3, 3),
              blurRadius: 4,
            ),
          ],
          border: const Border.fromBorderSide(
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
