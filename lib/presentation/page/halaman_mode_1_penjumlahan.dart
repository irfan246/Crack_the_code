import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/widget_brangkas.dart';

class HalamanMode1Penjumlahan extends StatelessWidget {
  const HalamanMode1Penjumlahan({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<PenjumlahanBlocMode1, PenjumlahanState>(
      listener: (context, state) {
        if (state is PenjumlahanWinState) {
          Navigator.pushReplacementNamed(context, '/berhasil');
        }
      },
      builder: (context, state) {
        if (state is PenjumlahanLoadedState) {
          return Scaffold(
              appBar: WidgetAppbar(
                title: 'MODE 1',
                preferredSizeHeight: screenHeight * 0.109,
              ),
              body: Center(
                child: SizedBox(
                  width: screenWidth * 0.39895833,
                  height: screenHeight * 0.61,
                  child: Wrap(
                    spacing: screenWidth * 0.0104166,
                    runSpacing: screenHeight * 0.0104166,
                    children: List.generate(4, (index) {
                      final safe = state.safes[index];
                      return WidgetBrangkas(
                        safe: state.safes[index],
                        isUnlocked: safe.isUnlocked,
                        buttonNumbers: safe.numbers,
                        selectedNumbers: safe.selectedIndexes,
                        onButtonTap: (selectedNumber) {
                          context.read<PenjumlahanBlocMode1>().add(
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
              ));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
