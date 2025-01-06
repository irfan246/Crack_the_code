import 'package:crack_the_code/application/bloc_mode_1_perkalian/perkalian_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/widget_appbar.dart';
import '../widget/widget_brangkas.dart';

class HalamanMode1Perkalian extends StatelessWidget {
  const HalamanMode1Perkalian({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<PerkalianBlocMode1, PerkalianState>(
      listener: (context, state) {
        if (state is PerkalianWinState) {
          Navigator.pushReplacementNamed(context, '/berhasil');
        }
      },
      builder: (context, state) {
        if (state is PerkalianLoadedState) {
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
                    runSpacing: screenWidth * 0.0104166,
                    children: List.generate(4, (index) {
                      final safe = state.safes[index];
                      return WidgetBrangkas(
                        safe: state.safes[index],
                        isUnlocked: safe.isUnlocked,
                        buttonNumbers: safe.numbers,
                        selectedNumbers: safe.selectedIndexes,
                        onButtonTap: (selectedNumber) {
                          context.read<PerkalianBlocMode1>().add(
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
