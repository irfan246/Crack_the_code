import 'package:crack_the_code/application/bloc_mode_2_level_1_penjumlahan/penjumlahan_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/widget_appbar.dart';
import '../widget/widget_brangkas.dart';

class HalamanMode2PenjumlahanLevel1 extends StatelessWidget {
  const HalamanMode2PenjumlahanLevel1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<PenjumlahanBlocMode2Level1, PenjumlahanState>(
      listener: (context, state) {
        if (state is PenjumlahanWinState) {
          Navigator.pushReplacementNamed(context, '/berhasil');
        } else if (state is PenjumlahanFailedState) {
          Navigator.pushReplacementNamed(context, '/gagal');
        }
      },
      builder: (context, state) {
        if (state is PenjumlahanLoadedState) {
          final remainingTime = state.remainingTime;
          final minutes = (remainingTime ~/ 60).toString().padLeft(2, '0');
          final seconds = (remainingTime % 60).toString().padLeft(2, '0');
          return Scaffold(
            appBar: WidgetAppbar(
              title: 'MODE 2 - LEVEL 1',
              preferredSizeHeight: screenHeight * 0.109,
            ),
            body: Stack(
              children: [
                Positioned(
                  top: screenHeight * 0.009460738,
                  left: screenWidth * 0.82,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.0104166),
                        side: BorderSide(
                            color: const Color(0xFFFE9994),
                            width: screenWidth * 0.000520833)),
                    color: const Color(0xFF8C3061),
                    child: SizedBox(
                      width: screenWidth * 0.078125,
                      child: Text(
                        'WAKTU : $minutes : $seconds',
                        style: TextStyle(
                          fontFamily: 'FLAWFULL',
                          fontSize: screenWidth * 0.0104166,
                          color: const Color(0xFFFE9994),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.39895833,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: screenWidth * 0.0104166,
                      runSpacing: screenHeight * 0.019,
                      children: List.generate(4, (index) {
                        final safe = state.safes[index];
                        return WidgetBrangkas(
                          safe: state.safes[index],
                          isUnlocked: safe.isUnlocked,
                          buttonNumbers: safe.numbers,
                          selectedNumbers: safe.selectedIndexes,
                          onButtonTap: (selectedNumber) {
                            context.read<PenjumlahanBlocMode2Level1>().add(
                                  SelectNumber(
                                    safeIndex: index,
                                    selectedIndex: selectedNumber,
                                  ),
                                );
                          },
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
