import 'package:carousel_slider/carousel_slider.dart';
import 'package:elberte_com/utils/globals.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import './portfolio_item.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .6);

    final CarouselOptions carouselOptions = CarouselOptions(
      viewportFraction: 1,
      scrollPhysics: const NeverScrollableScrollPhysics(),
      height: carouselContainerHeight,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 130),
      child: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return CarouselSlider(
              carouselController: Globals.carouselController,
              options: carouselOptions,
              items: [
                PortfolioItem(
                  width: width,
                  constraints: constraints,
                  imageAsset: 'assets/portfolio/pokedex_small.png',
                  title: 'Pokédex app',
                  description:
                      'Um aplicativo de Pokédex feito para mobile e que conta com diversas funções, como dark mode, permanecer dados na memória do aparelho, favoritos e muito mais.',
                  repository: 'pokedex',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
