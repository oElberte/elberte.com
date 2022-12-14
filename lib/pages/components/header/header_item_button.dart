import 'package:flutter/material.dart';

import '../../../models/header_item.dart';
import '../../../utils/constants.dart';
import '../../../utils/globals.dart';
import '../../widgets/widgets.dart';

class HeaderItemButton extends StatelessWidget {
  final HeaderItem item;

  const HeaderItemButton(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 3,
        ),
        child: TextButton(
          onPressed: () {
            Globals.scaffoldKey.currentState!.closeEndDrawer();
            showContactDialog(context);
          },
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
