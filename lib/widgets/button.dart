import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.isWide = false,
    this.bgColor = const Color(0xff424242),
    this.fgColor = Colors.white,
  });
  final bool isWide;
  final Color bgColor;
  final String text;
  final Color fgColor;
  @override
  Widget build(BuildContext context) => FittedBox(
        fit: BoxFit.contain,
        child: ElevatedButton(
          style: ButtonStyle(
            textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 28)),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
            shape: const MaterialStatePropertyAll(CircleBorder()),
            backgroundColor: MaterialStatePropertyAll(bgColor),
            foregroundColor: MaterialStatePropertyAll(fgColor),
            elevation: const MaterialStatePropertyAll(0),
          ),
          onPressed: () {},
          child: Text(text),
        ),
      );
}
