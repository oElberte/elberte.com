import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../utils/globals.dart';
import '../../utils/header_items.dart';
import '../components/components.dart';
import 'components/components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Globals.kController;

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: MobileDrawer(headerItems),
      ),
      appBar: const AppBarSection(),
      body: ListView.builder(
        itemCount: homeSections.length,
        controller: controller,
        itemBuilder: (context, index) {
          return AutoScrollTag(
            index: index,
            key: ValueKey(index),
            controller: controller,
            child: homeSections[index],
          );
        },
      ),
    );
  }
}
