import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/utils.dart';
import './footer.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Center(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  direction: Axis.horizontal,
                  spacing: 20,
                  runSpacing: 20,
                  children: footerItems
                      .map((footerItem) => FooterItemWidget(
                            item: footerItem,
                            constraints: constraints,
                          ))
                      .toList(),
                ),
                const SizedBox(height: 20),
                Flex(
                  direction: ScreenHelper.isMobile(context)
                      ? Axis.vertical
                      : Axis.horizontal,
                  mainAxisAlignment: ScreenHelper.isMobile(context)
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: ScreenHelper.isMobile(context)
                          ? const EdgeInsets.only(bottom: 8)
                          : const EdgeInsets.only(bottom: 25),
                      child: const Text(
                        'ELBERTE - 2022',
                        style: TextStyle(
                          color: kCaptionColor,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: GestureDetector(
                            onTap: () => htmlOpen(kGithubLink),
                            child: const MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                'GitHub',
                                style: TextStyle(
                                  color: kCaptionColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
