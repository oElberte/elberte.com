import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sprung/sprung.dart';

import '../../../utils/constants.dart';
import '../../../utils/globals.dart';

class PortfolioItem extends StatelessWidget {
  final double width;
  final BoxConstraints constraints;
  final String imageAsset;
  final String title;
  final String description;
  final String repository;

  const PortfolioItem({
    Key? key,
    required this.width,
    required this.constraints,
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.repository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      backgroundColor: kBackgroundColor,
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Flex(
        direction: constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
        children: [
          Expanded(
            flex: constraints.maxWidth > 720 ? 1 : 0,
            child: Padding(
              padding: constraints.maxWidth > 720
                  ? const EdgeInsets.only(bottom: 0)
                  : const EdgeInsets.only(bottom: 25),
              child: Image.asset(
                imageAsset,
                height: 500,
                width: constraints.maxWidth > 720 ? null : 350,
              ),
            ),
          ),
          SizedBox(width: constraints.maxWidth > 1200 ? 80 : 0),
          Expanded(
            flex: constraints.maxWidth > 720 ? 1 : 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MOBILE APP',
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  title.toUpperCase(),
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    color: kCaptionColor,
                    height: 1.5,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 48,
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth < 800 ? 0 : 28,
                        ),
                        //TODO: Add images of the app in github page
                        child: TextButton(
                          onPressed: () => html.window.open(
                            '$kGithubLink/$repository/',
                            '_blank',
                          ),
                          child: const Center(
                            child: Text(
                              'VEJA MAIS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: kPrimaryColor),
                        ),
                        height: 48,
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth < 800 ? 0 : 28,
                        ),
                        child: TextButton(
                          onPressed: () => Globals.carouselController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Sprung.overDamped,
                          ),
                          child: const Center(
                            child: Text(
                              'PRÓXIMO APLICATIVO',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
