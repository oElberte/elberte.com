import 'package:flutter/material.dart';

import '../../helpers/html_open.dart';
import '../../ui/styles/colors_app.dart';
import '../../ui/styles/text_styles.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: context.openLinkedin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'E',
                    style: context.textStyles.textBold.copyWith(
                      color: Colors.white,
                      fontFamily: context.textStyles.fontFamilyOswald,
                      fontSize: 32,
                    ),
                  ),
                  TextSpan(
                    text: '.',
                    style: context.textStyles.textBold.copyWith(
                      color: context.colors.primary,
                      fontFamily: context.textStyles.fontFamilyOswald,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
