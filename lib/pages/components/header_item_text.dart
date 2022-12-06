import 'package:flutter/material.dart';

import '../../models/header_item.dart';

class HeaderItemText extends StatelessWidget {
  final HeaderItem item;

  const HeaderItemText(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        margin: const EdgeInsets.only(right: 30),
        child: GestureDetector(
          onTap: item.onTap,
          child: Text(
            item.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
