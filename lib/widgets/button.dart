import 'package:flutter/material.dart';
import 'package:hw2/providers/result_provider.dart';
import 'package:provider/provider.dart';

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
        onPressed: () =>
            Provider.of<ResultProvider>(context, listen: false).input(text),
        child: Text(text),
      );
}
