import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../sections/projects/widgets/arrow_button_widget.dart';
import '../ui/size_extensions.dart';
import '../widgets/left_menu_bar.dart';
import 'widgets/scroll_down.dart';

class BaseLayout extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final ValueNotifier<int> navigateTo;
  final List<Widget> children;

  const BaseLayout({
    super.key,
    required this.scaffoldKey,
    required this.navigateTo,
    required this.children,
  });

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  final controller = AutoScrollController(axis: Axis.vertical);

  @override
  void initState() {
    super.initState();

    widget.navigateTo.addListener(() {
      controller.scrollToIndex(widget.navigateTo.value, preferPosition: AutoScrollPosition.end);
    });
  }

  @override
  void dispose() {
    widget.navigateTo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: context.screenWidth > 700,
          child: LeftMenuBar(
            width: context.screenWidth > 1200 ? context.percentWidth(.14) : context.percentWidth(.2),
            navigateTo: (index) {
              controller.scrollToIndex(index, preferPosition: AutoScrollPosition.end);
            },
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                controller: controller,
                itemCount: widget.children.length,
                itemBuilder: (context, index) {
                  return AutoScrollTag(
                    key: ValueKey(index),
                    controller: controller,
                    index: index,
                    child: widget.children[index],
                  );
                },
              ),
              Visibility(
                visible: context.screenWidth < 700,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomButton(
                    onTap: widget.scaffoldKey.currentState!.openDrawer,
                    icon: Icons.menu,
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ),
              const ScrollDown()
            ],
          ),
        ),
      ],
    );
  }
}
