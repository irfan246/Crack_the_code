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
  Size get preferredSize => const Size.fromHeight(114);
}
