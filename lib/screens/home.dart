import 'package:flutter/material.dart';
import 'package:hw2/widgets/button.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double buttonDimension = width / 4;
    final double buttonHeight = buttonDimension * 0.85;
    final double interButtonDistance = buttonDimension * 0.15;
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(interButtonDistance / 2),
              child: Column(
                children: [
                  // ac, +-, %, /
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(
                            text: 'AC',
                            bgColor: Colors.grey,
                            fgColor: Color(0xff212121),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(
                            text: '±',
                            bgColor: Colors.grey,
                            fgColor: Color(0xff212121),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(
                            text: '%',
                            bgColor: Colors.grey,
                            fgColor: Color(0xff212121),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child:
                              const Button(text: '÷', bgColor: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  // 7, 8, 9, ×
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '7'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '8'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '9'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child:
                              const Button(text: '×', bgColor: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  // 4, 5, 6, –
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '4'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '5'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '6'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child:
                              const Button(text: '–', bgColor: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  // 1, 2, 3, +
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '1'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '2'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '3'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child:
                              const Button(text: '+', bgColor: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  // 0, \, , =
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(
                            text: '0',
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child: const Button(text: '.'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(interButtonDistance / 2),
                          child:
                              const Button(text: '=', bgColor: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
