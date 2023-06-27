import 'package:flutter/material.dart';

import '../../sections/projects/widgets/arrow_button_widget.dart';
import '../ui/size_extensions.dart';
import '../widgets/left_menu_bar.dart';
import 'widgets/scroll_down.dart';

class BaseLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Widget> children;

  const BaseLayout({
    super.key,
    required this.scaffoldKey,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: context.screenWidth > 700,
          child: LeftMenuBar(
            width: context.screenWidth > 1200 ? context.percentWidth(.14) : context.percentWidth(.2),
          ),
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
              Visibility(
                visible: context.screenWidth < 700,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomButton(
                    onTap: scaffoldKey.currentState!.openDrawer,
                    icon: Icons.menu,
                    padding: const EdgeInsets.all(8),
                  ),
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
