import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        //Open drawer with global key
        onTap: () => Globals.scaffoldKey.currentState!.openEndDrawer(),
        child: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
