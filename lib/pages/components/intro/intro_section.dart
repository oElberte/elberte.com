import 'intro_item.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double introContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .8 : .7);

    return SizedBox(
      height: introContainerHeight,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              minHeight: introContainerHeight,
            ),
            child: ScreenHelper(
              desktop: _buildDesktop(
                context,
                introItem.text,
                introItem.image,
              ),
              tablet: _buildTablet(
                context,
                introItem.text,
                introItem.image,
              ),
              mobile: _buildMobile(
                context,
                introItem.text,
                introItem.image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(child: text),
          Expanded(child: image),
        ],
      ),
    ),
  );
}

Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(child: text),
          Expanded(child: image),
        ],
      ),
    ),
  );
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: SizedBox(
            height: 250,
            width: 250,
            child: image,
          ),
        ),
        text,
      ],
    ),
  );
}
