import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc_mode_2_level_3_penjumlahan/penjumlahan_bloc.dart';
import '../widget/widget_appbar.dart';
import '../widget/widget_brangkas.dart';

class HalamanMode2PenjumlahanLevel3 extends StatelessWidget {
  const HalamanMode2PenjumlahanLevel3({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PenjumlahanBlocMode2Level3, PenjumlahanState>(
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
            appBar: const WidgetAppbar(title: 'MODE 2 - LEVEL 3'),
            body: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 1700,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Color(0xFFFE9994), width: 1)),
                    color: const Color(0xFF8C3061),
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        'WAKTU : $minutes : $seconds',
                        style: const TextStyle(
                          fontFamily: 'FLAWFULL',
                          fontSize: 20,
                          color: Color(0xFFFE9994),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 766,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(4, (index) {
                        final safe = state.safes[index];
                        return WidgetBrangkas(
                          safe: state.safes[index],
                          isUnlocked: safe.isUnlocked,
                          buttonNumbers: safe.numbers,
                          selectedNumbers: safe.selectedIndexes,
                          onButtonTap: (selectedNumber) {
                            context.read<PenjumlahanBlocMode2Level3>().add(
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
