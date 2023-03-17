import 'package:flutter/material.dart';
import 'package:hw2/widgets/button.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const double kButtonMargin = 16;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: kButtonMargin,
                  left: kButtonMargin,
                ),
                child: Column(
                  children: [
                    // ac, +-, %, /
                    Padding(
                      padding: const EdgeInsets.only(bottom: kButtonMargin),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(
                                text: 'AC',
                                bgColor: Colors.grey,
                                fgColor: Color(0xff212121),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(
                                text: '±',
                                bgColor: Colors.grey,
                                fgColor: Color(0xff212121),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(
                                text: '%',
                                bgColor: Colors.grey,
                                fgColor: Color(0xff212121),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '÷', bgColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 7, 8, 9, ×
                    Padding(
                      padding: const EdgeInsets.only(bottom: kButtonMargin),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '7'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '8'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '9'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '×', bgColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 4, 5, 6, –
                    Padding(
                      padding: const EdgeInsets.only(bottom: kButtonMargin),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '4'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '5'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '6'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '–', bgColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 1, 2, 3, +
                    Padding(
                      padding: const EdgeInsets.only(bottom: kButtonMargin),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '1'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '2'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '3'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '+', bgColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 0, \, , =
                    Padding(
                      padding: const EdgeInsets.only(bottom: kButtonMargin),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '0', isWide: true),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: ','),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: kButtonMargin),
                              child: Button(text: '=', bgColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
