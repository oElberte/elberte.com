import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/utils.dart';
import './intro_item.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildDesktop(
        context,
        buildIntroItem(context).text,
        buildIntroItem(context).image,
      ),
      tablet: _buildTablet(
        context,
        buildIntroItem(context).text,
        buildIntroItem(context).image,
      ),
      mobile: _buildMobile(
        context,
        buildIntroItem(context).text,
        buildIntroItem(context).image,
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
