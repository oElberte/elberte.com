import 'package:elberte_com/utils/constants.dart';
import 'package:elberte_com/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: constraints.maxWidth > 720 ? 1 : 0,
                  child: Padding(
                    padding: constraints.maxWidth > 720
                        ? const EdgeInsets.only(bottom: 0)
                        : const EdgeInsets.only(bottom: 25),
                    child: Image.asset(
                      'assets/portfolio/pokedex_small.png',
                      height: 500,
                      width: constraints.maxWidth > 720 ? null : 350,
                    ),
                  ),
                ),
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
                        'POKEDEX APP',
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'This is a random text about the project This is a random text about the project This is a random text about the project This is a random text about the project This is a random text about the project This is a random text about the project This is a random text about the project ',
                        style: TextStyle(
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
                                  borderRadius: BorderRadius.circular(8)),
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 28,
                              ),
                              //TODO: Implement onTap and onHover to GitHub page
                              child: TextButton(
                                onPressed: () {},
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 28,
                              ),
                              //TODO: Implement onTap and onHover with carousel
                              child: TextButton(
                                onPressed: () {},
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
        },
      ),
    );
  }
}
