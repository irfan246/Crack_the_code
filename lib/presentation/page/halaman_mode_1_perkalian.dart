import 'package:crack_the_code/application/bloc_mode_1_perkalian/perkalian_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/widget_appbar.dart';
import '../widget/widget_brangkas.dart';

class HalamanMode1Perkalian extends StatelessWidget {
  const HalamanMode1Perkalian({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PerkalianBlocMode1, PerkalianState>(
      listener: (context, state) {
        if (state is PerkalianWinState) {
          Navigator.pushReplacementNamed(context, '/berhasil');
        }
      },
      builder: (context, state) {
        if (state is PerkalianLoadedState) {
          return Scaffold(
              appBar: const WidgetAppbar(title: 'MODE 1'),
              body: Center(
                child: SizedBox(
                  width: 766,
                  height: 644,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: List.generate(4, (index) {
                      final safe = state.safes[index];
                      return WidgetBrangkas(
                        safe: state.safes[index],
                        isUnlocked: safe.isUnlocked,
                        buttonNumbers: safe.numbers,
                        selectedNumbers: safe.selectedNumbers,
                        onButtonTap: (selectedNumber) {
                          context.read<PerkalianBlocMode1>().add(
                                SelectNumber(
                                  safeIndex: index,
                                  selectedNumber: selectedNumber,
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
