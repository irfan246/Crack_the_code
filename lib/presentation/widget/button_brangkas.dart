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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: buttonTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : const Color(0xFFFFB38E),
          borderRadius: BorderRadius.circular(screenWidth * 0.002604166),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(screenWidth * 0.0015625, screenHeight * 0.00285),
              blurRadius: 4,
            ),
          ],
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.black,
              width: screenWidth * 0.000522,
            ),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: screenWidth * 0.01875,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF8C3061),
            ),
          ),
        ),
      ),
    );
  }
}
