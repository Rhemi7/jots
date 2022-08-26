import 'package:flutter/material.dart';

import '../../utils/margins.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.value, required this.title})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
        const YMargin(5),
        Text(
          value,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
