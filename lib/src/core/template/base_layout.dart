import 'package:flutter/material.dart';

import '../widgets/left_menu_bar.dart';
import 'widgets/scroll_down.dart';

class BaseLayout extends StatelessWidget {
  final List<Widget> children;

  const BaseLayout({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LeftMenuBar(),
        Stack(
          children: [
            const ScrollDown(),
            SingleChildScrollView(
              child: Column(
                children: children,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
