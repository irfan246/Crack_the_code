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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 480,
              width: 582,
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/emote_gagal.png'),
                    ),
                  ),
                  Positioned(
                    top: 380,
                    left: 225,
                    child: Text(
                      'YAHH',
                      style: TextStyle(
                        fontFamily: 'Story_Milky',
                        fontSize: 48,
                        color: Color(0xFF206430),
                        shadows: [
                          Shadow(color: Colors.white, offset: Offset(1, 0)),
                          Shadow(color: Colors.white, offset: Offset(-1, 0)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 425,
                    left: 125,
                    child: Text(
                      'KAMU GAGAL..',
                      style: TextStyle(
                        fontFamily: 'Story_Milky',
                        fontSize: 48,
                        color: Color(0xFF206430),
                        shadows: [
                          Shadow(color: Colors.white, offset: Offset(1, 0)),
                          Shadow(color: Colors.white, offset: Offset(-1, 0)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              width: 1200,
              height: 87,
              child: Wrap(
                children: [
                  Text(
                    "KEGAGALAN BUKAN AKHIR, MELAINKAN AWAL DARI PELAJARAN BARU. JANGAN TAKUT GAGAL, TAKUTLAH JIKA ANDA BERHENTI MENCOBA. KARENA JUSTRU, KEGAGALAN ADALAH LANGKAH MENUJU KESUKSESAN YANG LEBIH BESAR. SEMANGAT!!",
                    style: TextStyle(
                      fontFamily: 'FLAWFULL',
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: const TextSpan(
                  text: '-',
                  children: [
                    TextSpan(
                        text: 'CRACK',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          color: Color(0xFFD95F59),
                          fontSize: 32,
                          wordSpacing: 67.39,
                        )),
                    TextSpan(
                        text: 'THE',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          color: Color(0xFFD95F59),
                          fontSize: 20,
                          wordSpacing: 42.12,
                        )),
                    TextSpan(
                        text: 'CODE',
                        style: TextStyle(
                          fontFamily: 'Story_Milky',
                          color: Color(0xFFD95F59),
                          fontSize: 32,
                          wordSpacing: 67.39,
                        ))
                  ],
                  style: TextStyle(
                    fontFamily: 'FLAWFULL',
                    fontSize: 64,
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
          child: const Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              'AYO COBA LAGI!!',
              style: TextStyle(
                fontFamily: 'FLAWFULL',
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
