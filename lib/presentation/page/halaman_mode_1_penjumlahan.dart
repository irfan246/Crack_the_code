import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bloc_mode_1_penjumlahan/penjumlahan_bloc.dart';
import '../widget/widget_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/widget_brangkas.dart';

class HalamanMode1Penjumlahan extends StatelessWidget {
  const HalamanMode1Penjumlahan({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PenjumlahanBlocMode1, PenjumlahanState>(
      listener: (context, state) {
        if (state is PenjumlahanWinState) {
          Navigator.pushReplacementNamed(context, '/berhasil');
        }
      },
      builder: (context, state) {
        if (state is PenjumlahanLoadedState) {
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
