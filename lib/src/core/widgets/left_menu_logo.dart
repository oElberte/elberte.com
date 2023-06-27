import 'package:flutter/material.dart';

import '../helpers/html_open.dart';
import '../ui/styles/colors_app.dart';
import '../ui/styles/text_styles.dart';

class LeftMenuLogo extends StatefulWidget {
  const LeftMenuLogo({
    super.key,
  });

  @override
  State<LeftMenuLogo> createState() => _LeftMenuLogoState();
}

class _LeftMenuLogoState extends State<LeftMenuLogo> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: AnimatedPhysicalModel(
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
        elevation: isHover ? 6 : 0,
        shape: BoxShape.rectangle,
        shadowColor: context.colors.primary,
        color: Colors.black,
        child: InkWell(
          onTap: context.openLinkedin,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'E',
                style: context.textStyles.textBold.copyWith(
                  color: Colors.white,
                  fontFamily: context.textStyles.fontFamilyOswald,
                  fontSize: 122,
                ),
              ),
              Text(
                '.',
                style: context.textStyles.textBold.copyWith(
                  color: context.colors.primary,
                  fontFamily: context.textStyles.fontFamilyOswald,
                  fontSize: 116,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
