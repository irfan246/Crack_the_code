import 'package:flutter/material.dart';

class WidgetBrangkasSalah extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onDismiss;

  const WidgetBrangkasSalah({
    Key? key,
    required this.errorMessage,
    required this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), onDismiss);

    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.9),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          errorMessage,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
