import 'package:crack_the_code/application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_1_perkalian/perkalian_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_2_penjumlahan.dart/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_2_perkalian/perkalian_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_3_penjumlahan/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_3_perkalian/perkalian_bloc.dart';
import 'package:flutter/material.dart';
import '../../application/bloc_helper.dart';
import '../../application/bloc_mode_2_level_1_penjumlahan/penjumlahan_bloc.dart';
import '../../application/bloc_mode_1_perkalian/perkalian_bloc.dart';

class HalamanBerhasil extends StatelessWidget {
  const HalamanBerhasil({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        addEventToBloc<PenjumlahanBlocMode1>(
            context, penjumlahanMode1ResetEvent());
        addEventToBloc<PerkalianBlocMode1>(context, perkalianMode1ResetEvent());
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
        Navigator.pushReplacementNamed(context, '/pilihMode');
      },
    );
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.45411,
            width: screenWidth * 0.303125,
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/images/emote_berhasil.png'),
                    width: screenWidth * 0.2276,
                    height: screenHeight * 0.345317,
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.35952,
                  left: screenWidth * 0.0625,
                  child: Text(
                    'YEAY SELAMAT',
                    style: TextStyle(
                      fontFamily: 'Story_Milky',
                      fontSize: screenWidth * 0.025,
                      color: const Color(0xFF206430),
                      shadows: [
                        Shadow(
                            color: Colors.white,
                            offset: Offset(screenWidth * 0.000522, 0)),
                        Shadow(
                            color: Colors.white,
                            offset: Offset(screenWidth * -0.000522, 0)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.4022,
                  left: screenWidth * 0.046875,
                  child: Text(
                    'KAMU BERHASIL!!',
                    style: TextStyle(
                        fontFamily: 'Story_Milky',
                        fontSize: screenWidth * 0.025,
                        color: const Color(0xFF206430),
                        shadows: [
                          Shadow(
                              color: Colors.white,
                              offset: Offset(screenWidth * 0.000522, 0)),
                          Shadow(
                              color: Colors.white,
                              offset: Offset(screenWidth * -0.000522, 0)),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.037843,
          ),
          SizedBox(
            width: screenWidth * 0.412,
            height: screenHeight * 0.088,
            child: Wrap(
              children: [
                Text(
                  "JANGAN MUDAH PUAS DENGAN KEBERHASILAN. KARNA MASIH ADA KEBERHASILAN-KEBERHASILAN LAIN YANG HARUS KALIAN RAIH. SEMANGAT!!",
                  style: TextStyle(
                    fontFamily: 'FLAWFULL',
                    fontSize: screenWidth * 0.0166,
                    color: const Color.fromARGB(255, 223, 216, 216),
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.023653,
          ),
          RichText(
            text: TextSpan(
                text: '-',
                children: [
                  TextSpan(
                      text: 'CRACK',
                      style: TextStyle(
                        fontFamily: 'Story_Milky',
                        color: const Color(0xFFD95F59),
                        fontSize: screenWidth * 0.0166,
                        wordSpacing: screenWidth * 0.0352,
                      )),
                  TextSpan(
                      text: 'THE',
                      style: TextStyle(
                        fontFamily: 'Story_Milky',
                        color: const Color(0xFFD95F59),
                        fontSize: screenWidth * 0.0104166,
                        wordSpacing: screenWidth * 0.0219375,
                      )),
                  TextSpan(
                      text: 'CODE',
                      style: TextStyle(
                        fontFamily: 'Story_Milky',
                        color: const Color(0xFFD95F59),
                        fontSize: screenWidth * 0.0166,
                        wordSpacing: screenWidth * 0.0352,
                      ))
                ],
                style: TextStyle(
                  fontFamily: 'FLAWFULL',
                  fontSize: screenWidth * 0.033,
                  color: Colors.white,
                )),
          )
        ],
      ),
    ));
  }
}
