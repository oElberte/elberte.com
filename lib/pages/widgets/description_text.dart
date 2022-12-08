import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  final Color? color;

  const DescriptionText(
    this.text, {
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Text(
        text,
        style: TextStyle(
          color: color ?? kCaptionColor,
          height: 1.5,
          fontSize: 15,
        ),
      ),
    );
  }
}
