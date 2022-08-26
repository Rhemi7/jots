import 'package:flutter/material.dart';

class GreenTextWidget extends StatelessWidget {
  const GreenTextWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.fontSize = 14,
    this.padding = 8.0,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;
  final double fontSize;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Text(
            text,
            style: TextStyle(color: Colors.greenAccent, fontSize: fontSize),
          ),
        ));
  }
}
