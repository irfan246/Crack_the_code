import 'package:flutter/material.dart';
import 'button_brangkas.dart';

class WidgetBrangkas extends StatelessWidget {
  final safe;
  final bool isUnlocked;
  final bool isWrong;
  final List<int> buttonNumbers;
  final List<int> selectedNumbers;
  final Function(int) onButtonTap;

  const WidgetBrangkas({
    super.key,
    required this.safe,
    required this.isUnlocked,
    required this.buttonNumbers,
    required this.selectedNumbers,
    required this.onButtonTap,
    this.isWrong = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!isUnlocked) {
      return SizedBox(
        width: 352,
        height: 320,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 303,
              left: 70,
              child: SizedBox(
                width: 30,
                height: 17,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 303,
              left: 265,
              child: SizedBox(
                width: 30,
                height: 17,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: 352,
                height: 308,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    color: Color.fromRGBO(255, 179, 142, 1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 14,
              child: SizedBox(
                width: 324,
                height: 281,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(11)),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 53,
              left: 50,
              child: SizedBox(
                width: 52,
                height: 52,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 179, 142, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(52, 52)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 205,
              left: 50,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 179, 142, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(52, 52)),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 60,
              child: Container(
                width: 30,
                height: 169,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(14)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 3),
                      blurRadius: 3,
                    )
                  ],
                  color: const Color.fromRGBO(255, 179, 142, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 165,
              top: 23,
              child: SizedBox(
                width: 95,
                height: 30,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFB38E),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 3),
                        blurRadius: 4,
                      )
                    ],
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      safe.targetSum.toString(), // Set the correct target sum
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xFF8C3061),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 120,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(108, 95, 95, 95),
                        ),
                      ),
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: buttonNumbers.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                      ),
                      itemBuilder: (context, index) {
                        final number = buttonNumbers[index];
                        final isSelected = selectedNumbers.contains(number);
                        return ButtonBrangkas(
                          buttonText: number.toString(),
                          isSelected: isSelected,
                          buttonTap: isUnlocked
                              ? null
                              : () {
                                  onButtonTap(number);
                                },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SafeArea(
          child: Stack(
        children: [
          Positioned(
              child: Image(
            image: AssetImage('assets/images/brangkas_terbuka.png'),
            width: 352,
            height: 320,
          )),
          Positioned(
              left: 157,
              top: 100,
              child: Image(
                image: AssetImage('assets/images/emote_berhasil.png'),
                width: 126,
                height: 123,
              )),
          Positioned(
              top: 200,
              left: 165,
              child: Text(
                'YEAY SELAMAT',
                style: TextStyle(
                  fontFamily: 'Story_Milky',
                  fontSize: 16,
                  color: Color(0xFF206430),
                ),
              )),
          Positioned(
              top: 220,
              left: 155,
              child: Text('KAMU BERHASIL!!',
                  style: TextStyle(
                    fontFamily: 'Story_Milky',
                    fontSize: 16,
                    color: Color(0xFF206430),
                  ))),
        ],
      ));
    }
  }
}
