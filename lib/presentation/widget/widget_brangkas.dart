import '../widget/button_brangkas.dart';
import 'package:flutter/material.dart';

class WidgetBrangkas extends StatelessWidget {
  final List<String> data = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];

  WidgetBrangkas({super.key});

  @override
  Widget build(BuildContext context) {
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
                  )),
                )),
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
                  )),
                )),
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
                  )),
                )),
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
                  )),
                )),
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
                  )),
                )),
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
                    ))),
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
                            blurRadius: 3)
                      ],
                      color: const Color.fromRGBO(255, 179, 142, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                    ))),
            const Positioned(
              left: 165,
              top: 23,
              child: SizedBox(
                width: 95,
                height: 30,
                child: DecoratedBox(
                  decoration: BoxDecoration(
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
                      '28',
                      style: TextStyle(
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
                      itemCount: data.length,
                      padding: const EdgeInsets.all(8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                      ),
                      itemBuilder: (context, index) {
                        return ButtonBrangkas(buttonText: data[index]);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
