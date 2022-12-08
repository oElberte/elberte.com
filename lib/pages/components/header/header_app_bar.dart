import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import './header.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: buildHeader(),
      tablet: buildHeader(),
      mobile: buildMobileHeader(),
    );
  }

  Widget buildHeader() {
    return AppBar(
      elevation: 0,
      title: const HeaderLogo(),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: HeaderRow(),
        ),
      ],
      backgroundColor: kBackgroundColor.withAlpha(175),
    );
  }

  Widget buildMobileHeader() {
    return AppBar(
      elevation: 0,
      title: const HeaderLogo(),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: HeaderDrawerButton(),
        ),
      ],
      backgroundColor: kBackgroundColor.withAlpha(175),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
