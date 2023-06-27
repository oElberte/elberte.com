import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/size_extensions.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/apps_model.dart';
import 'arrow_button_widget.dart';

class ImageCarousel extends StatelessWidget {
  final List<AppsModel> apps;
  final int index;
  final double height;

  const ImageCarousel({
    super.key,
    required this.apps,
    required this.index,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    final imgIndex = ValueNotifier<int>(1);

    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SizedBox(
              height: context.percentHeight(.8),
              width: context.percentWidth(.6),
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: apps[index].images.length,
                    options: CarouselOptions(
                      height: context.percentHeight(.75),
                      enableInfiniteScroll: true,
                      // viewportFraction: 0.8,
                      enlargeCenterPage: true,
                      // enlargeFactor: 0.3,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      onPageChanged: (index, reason) {
                        imgIndex.value = index + 1;
                      },
                    ),
                    itemBuilder: (context, imageIndex, realIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image.asset(
                          apps[index].images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomButton(
                      onTap: Navigator.of(context).pop,
                      icon: Icons.close,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomButton(
                      onTap: () => controller.previousPage(),
                      icon: Icons.arrow_circle_left_outlined,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomButton(
                      onTap: () => controller.nextPage(),
                      icon: Icons.arrow_circle_right_outlined,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[800]!.withOpacity(.70),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: imgIndex,
                        builder: (context, value, child) {
                          return Stack(
                            children: [
                              Text(
                                '$value / ${apps[index].images.length}',
                                style: context.textStyles.textBold.copyWith(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                '$value / ${apps[index].images.length}',
                                style: context.textStyles.textBold.copyWith(
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              apps[index].images.first,
              fit: BoxFit.fitHeight,
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.zoom_in,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(3, 3),
                    ),
                  ],
                  size: 42,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
