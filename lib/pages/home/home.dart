import 'package:elberte_com/utils/globals.dart';
import 'package:flutter/material.dart';

import '../../utils/header_items.dart';
import '../components/components.dart';
import 'components/components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: MobileDrawer(headerItems),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SiteHeader(),
            // Intro(),
          ],
        ),
      ),
    );
  }
}
