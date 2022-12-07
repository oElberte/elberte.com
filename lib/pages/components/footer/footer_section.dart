import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import './footer_items.dart';

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
                      .map(
                        (item) => SizedBox(
                          height: 120,
                          width: ScreenHelper.isMobile(context)
                              ? constraints.maxWidth / 2 - 20
                              : constraints.maxWidth / 2 - 20,
                          child: Column(
                            crossAxisAlignment: item.title == 'EMAIL'
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: item.title == 'EMAIL'
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    item.iconPath,
                                    width: 30,
                                    color: kPrimaryColor,
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    item.title,
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  if (item.text == 'contato@elberte.com') {
                                    html.window.open(
                                      'mailto:contato@elberte.com',
                                      '_blank',
                                    );
                                  } else {
                                    html.window.open(
                                      'https://www.github.com/oElberte',
                                      '_blank',
                                    );
                                  }
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    item.text,
                                    style: const TextStyle(
                                      color: kCaptionColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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
                            onTap: () => html.window.open(
                              'https://www.github.com/oElberte',
                              '_blank',
                            ),
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
