import 'package:flutter/material.dart';

import '../../application/bloc_helper.dart';
import '../../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import '../../application/bloc_mode_1_perkalian/perkalian_bloc.dart';
import '../../application/bloc_mode_2_level_1_penjumlahan/penjumlahan_bloc.dart';
import '../../application/bloc_mode_2_level_1_perkalian/perkalian_bloc.dart';
import '../../application/bloc_mode_2_level_2_penjumlahan.dart/penjumlahan_bloc.dart';
import '../../application/bloc_mode_2_level_2_perkalian/perkalian_bloc.dart';
import '../../application/bloc_mode_2_level_3_penjumlahan/penjumlahan_bloc.dart';
import '../../application/bloc_mode_2_level_3_perkalian/perkalian_bloc.dart';

class WidgetAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double preferredSizeHeight;

  const WidgetAppbar({
    super.key,
    required this.title,
    this.preferredSizeHeight = 144,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AppBar(
      backgroundColor: const Color(0xFF8C3061),
      centerTitle: true,
      toolbarHeight: preferredSize.height,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'FLAWFULL',
          fontSize: screenWidth * 0.046875,
          color: Color(0xFFFE9994),
        ),
      ),
      leading: IconButton(
        padding: EdgeInsets.only(left: screenWidth * 0.013022),
        icon: Image(
          image: AssetImage('assets/images/arrow_back.png'),
          width: screenWidth * 0.0323,
          height: screenHeight * 0.072,
        ),
        onPressed: () {
          addEventToBloc<PenjumlahanBlocMode1>(
              context, penjumlahanMode1ResetEvent());
          addEventToBloc<PerkalianBlocMode1>(
              context, perkalianMode1ResetEvent());
          addEventToBloc<PenjumlahanBlocMode2Level1>(
              context, PenjumlahanMode2Level1ResetEvent());
          addEventToBloc<PenjumlahanBlocMode2Level2>(
              context, PenjumlahanMode2Level2ResetEvent());
          addEventToBloc<PenjumlahanBlocMode2Level3>(
              context, PenjumlahanMode2Level3ResetEvent());
          addEventToBloc<PerkalianBlocMode2Level1>(
              context, PerkalianMode2Level1ResetEvent());
          addEventToBloc<PerkalianBlocMode2Level2>(
              context, PerkalianMode2Level2ResetEvent());
          addEventToBloc<PerkalianBlocMode2Level3>(
              context, PerkalianMode2Level3ResetEvent());
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(preferredSizeHeight);
}
