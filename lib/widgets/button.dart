import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.size,
    this.alignment,
    this.bgColor = const Color(0xff424242),
    this.fgColor = Colors.white,
  });
  final Size? size;
  final AlignmentGeometry? alignment;
  final Color bgColor;
  final String text;
  final Color fgColor;
  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ButtonStyle(
          shape: alignment != null
              ? const MaterialStatePropertyAll(StadiumBorder())
              : const MaterialStatePropertyAll(CircleBorder()),
          alignment: alignment,
          textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 32)),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
          backgroundColor: MaterialStatePropertyAll(bgColor),
          foregroundColor: MaterialStatePropertyAll(fgColor),
          elevation: const MaterialStatePropertyAll(0),
        ),
        onPressed: () {},
        child: Text(text),
      );
}
