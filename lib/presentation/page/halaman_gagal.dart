import 'package:crack_the_code/application/bloc_helper.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_1_perkalian/perkalian_bloc.dart';
import 'package:crack_the_code/application/bloc_mode_2_level_3_penjumlahan/penjumlahan_bloc.dart';
import 'package:flutter/material.dart';
import '../../application/bloc_mode_2_level_1_perkalian/perkalian_bloc.dart';
import '../../application/bloc_mode_2_level_2_penjumlahan.dart/penjumlahan_bloc.dart';
import '../../application/bloc_mode_2_level_2_perkalian/perkalian_bloc.dart';
import '../../application/bloc_mode_2_level_3_perkalian/perkalian_bloc.dart';

class HalamanGagal extends StatelessWidget {
  const HalamanGagal({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.45416,
              width: screenWidth * 0.303125,
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      image: const AssetImage('assets/images/emote_gagal.png'),
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.356425,
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.36,
                    left: screenWidth * 0.1171875,
                    child: Text(
                      'YAHH',
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
                    left: screenWidth * 0.065104166,
                    child: Text(
                      'KAMU GAGAL..',
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
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.037843,
            ),
            SizedBox(
              width: screenWidth * 0.625,
              height: screenHeight * 0.0804165,
              child: Wrap(
                children: [
                  Text(
                    "KEGAGALAN BUKAN AKHIR, MELAINKAN AWAL DARI PELAJARAN BARU. JANGAN TAKUT GAGAL, TAKUTLAH JIKA ANDA BERHENTI MENCOBA. KARENA JUSTRU, KEGAGALAN ADALAH LANGKAH MENUJU KESUKSESAN YANG LEBIH BESAR. SEMANGAT!!",
                    style: TextStyle(
                      fontFamily: 'FLAWFULL',
                      fontSize: screenWidth * 0.01666,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.037843,
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
                          fontSize: screenWidth * 0.01666,
                          wordSpacing: screenWidth * 0.0351,
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
                          fontSize: screenWidth * 0.01666,
                          wordSpacing: screenWidth * 0.0351,
                        ))
                  ],
                  style: TextStyle(
                    fontFamily: 'FLAWFULL',
                    fontSize: screenWidth * 0.03333,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
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
            Navigator.pushReplacementNamed(context, '/pilihMode');
          },
          child: Padding(
            padding: EdgeInsets.only(
              bottom: screenHeight * 0.009463,
            ),
            child: Text(
              'AYO COBA LAGI!!',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                fontSize: screenWidth * 0.0125,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
