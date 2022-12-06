import 'package:elberte_com/utils/screen_helper.dart';
import 'package:flutter/material.dart';

import './header.dart';

class SiteHeader extends StatelessWidget {
  const SiteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: buildHeader(),
      tablet: buildHeader(),
      mobile: buildMobileHeader(),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            HeaderLogo(),
            HeaderDrawerButton(),
          ],
        ),
      ),
    );
  }
}
