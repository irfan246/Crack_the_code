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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    if (!isUnlocked) {
      return SizedBox(
        width: screenWidth * 0.1833,
        height: screenHeight * 0.305,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: screenHeight * 0.2866,
              left: screenWidth * 0.036457,
              child: SizedBox(
                width: screenWidth * 0.015625,
                height: screenHeight * 0.162,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.003125),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: screenWidth * 0.000522,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.2866,
              left: screenWidth * 0.138022,
              child: SizedBox(
                width: screenWidth * 0.015625,
                height: screenHeight * 0.162,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.003125),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: screenWidth * 0.000522,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: screenWidth * 0.1833,
                height: screenHeight * 0.2914,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.00573),
                    color: const Color.fromRGBO(255, 179, 142, 1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.0142,
              left: screenWidth * 0.0073,
              child: SizedBox(
                width: screenWidth * 0.16875,
                height: screenHeight * 0.267,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.00573),
                    color: const Color.fromRGBO(255, 142, 143, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: screenWidth * 0.000522,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.050142,
              left: screenWidth * 0.026045,
              child: SizedBox(
                width: screenWidth * 0.0272,
                height: screenHeight * 0.0492,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 179, 142, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      width: screenWidth * 0.000522,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(
                        screenWidth * 0.0272, screenHeight * 0.0492)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.194,
              left: screenWidth * 0.026045,
              child: Container(
                width: screenWidth * 0.0272,
                height: screenHeight * 0.0492,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 179, 142, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: screenWidth * 0.000522,
                  ),
                  borderRadius: BorderRadius.all(Radius.elliptical(
                      screenWidth * 0.0272, screenHeight * 0.0492)),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.06627,
              left: screenWidth * 0.03125,
              child: Container(
                width: screenWidth * 0.015625,
                height: screenHeight * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.0073),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, screenHeight * 0.00285),
                      blurRadius: 3,
                    )
                  ],
                  color: const Color.fromRGBO(255, 179, 142, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    width: screenWidth * 0.000522,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.0859375,
              top: screenHeight * 0.02176,
              child: SizedBox(
                width: screenWidth * 0.04948,
                height: screenHeight * 0.031,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFB38E),
                    borderRadius: BorderRadius.circular(screenWidth * 0.00522),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                            screenWidth * 0.0015625, screenHeight * 0.00285),
                        blurRadius: 4,
                      )
                    ],
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Colors.black,
                        width: screenWidth * 0.000522,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      safe.targetSum.toString(), // Set the correct target sum
                      style: TextStyle(
                        fontSize: screenWidth * 0.0125,
                        color: const Color(0xFF8C3061),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.058,
              left: screenWidth * 0.0625,
              child: SizedBox(
                width: screenWidth * 0.1045,
                height: screenHeight * 0.19,
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
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(screenWidth * 0.004166),
                      itemCount: buttonNumbers.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: screenWidth * 0.003125,
                          mainAxisSpacing: screenHeight * 0.0058),
                      itemBuilder: (context, index) {
                        final number = buttonNumbers[index];
                        final isSelected = selectedNumbers.contains(index);
                        return ButtonBrangkas(
                          buttonText: number.toString(),
                          isSelected: isSelected,
                          buttonTap: isUnlocked
                              ? null
                              : () {
                                  onButtonTap(index);
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
      return SafeArea(
          child: Stack(
        children: [
          Positioned(
              child: Image(
            image: const AssetImage('assets/images/brangkas_terbuka.png'),
            width: screenWidth * 0.1833,
            height: screenHeight * 0.305,
          )),
          Positioned(
              left: screenWidth * 0.083,
              top: screenWidth * 0.05463,
              child: Image(
                image: const AssetImage('assets/images/emote_berhasil.png'),
                width: screenWidth * 0.065625,
                height: screenHeight * 0.1166,
              )),
          Positioned(
              top: screenHeight * 0.18,
              left: screenWidth * 0.0859375,
              child: Text(
                'YEAY SELAMAT',
                style: TextStyle(
                  fontFamily: 'Story_Milky',
                  fontSize: screenWidth * 0.00833,
                  color: const Color(0xFF206430),
                ),
              )),
          Positioned(
              top: screenHeight * 0.20,
              left: screenWidth * 0.08073,
              child: Text('KAMU BERHASIL!!',
                  style: TextStyle(
                    fontFamily: 'Story_Milky',
                    fontSize: screenWidth * 0.00833,
                    color: const Color(0xFF206430),
                  ))),
        ],
      ));
    }
  }
}
