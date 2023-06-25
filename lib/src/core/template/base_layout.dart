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
      children: [
        LeftMenuBar(
          width: context.screenWidth > 1200 ? context.percentWidth(.14) : context.percentWidth(.2),
        ),
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              ),
              const ScrollDown(),
            ],
          ),
        ),
      ],
    );
  }
}
