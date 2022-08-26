import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.name,
    required this.onTap,
    this.fontSize = 17,
  }) : super(key: key);

  final String name;
  final void Function()? onTap;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(
          name,
          style: TextStyle(
              color: const Color(0xff5E9CC2),
              fontSize: fontSize,
              letterSpacing: 0.5),
        ));
  }
}
