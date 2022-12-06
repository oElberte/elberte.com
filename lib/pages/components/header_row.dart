import 'package:elberte_com/pages/components/components.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/header_items.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
        children: headerItems
            .map((item) =>
                item.isButton ? HeaderItemButton(item) : HeaderItemText(item))
            .toList(),
      ),
    );
  }
}
