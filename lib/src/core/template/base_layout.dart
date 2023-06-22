import 'package:flutter/material.dart';

import '../ui/size_extensions.dart';
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
        Stack(
          children: [
            Container(
              width: context.screenWidth > 1200 ? context.percentWidth(.10) : context.percentWidth(.20),
              height: context.screenHeight,
              color: Colors.black87,
            ),
            const LeftMenuBar(),
          ],
        ),
        Stack(
          children: [
            const Positioned(
              left: 0,
              bottom: 0,
              child: ScrollDown(),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: ScrollDown(),
            ),
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
