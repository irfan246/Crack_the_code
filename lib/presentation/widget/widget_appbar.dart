import 'package:flutter/material.dart';

class WidgetAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const WidgetAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF8C3061),
      centerTitle: true,
      toolbarHeight: preferredSize.height,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'FLAWFULL',
          fontSize: 90,
          color: Color(0xFFFE9994),
        ),
      ),
      leading: IconButton(
        padding: const EdgeInsets.only(left: 25),
        icon: const Image(image: AssetImage('assets/images/arrow_back.png')),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(114);
}
