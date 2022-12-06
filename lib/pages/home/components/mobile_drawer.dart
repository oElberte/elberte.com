import 'package:flutter/material.dart';

import '../../../models/header_item.dart';
import '../../components/components.dart';

class MobileDrawer extends StatelessWidget {
  final List<HeaderItem> headerItems;

  const MobileDrawer(
    this.headerItems, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return headerItems[index].isButton
                ? HeaderItemButton(headerItems[index])
                : HeaderItemText(headerItems[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 30);
          },
          itemCount: headerItems.length,
        ),
      ),
    );
  }
}
