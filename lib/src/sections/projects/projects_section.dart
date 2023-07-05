import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/helpers/language_selector.dart';
import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../models/apps_model.dart';
import 'widgets/arrow_button_widget.dart';
import 'widgets/project_item_widget.dart';

class ProjectsSection extends StatefulWidget {
  final List<AppsModel> apps;
  final bool isEnglish;

  const ProjectsSection({
    super.key,
    required this.apps,
    required this.isEnglish,
  });

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final scrollController = ItemScrollController();

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: context.percentHeight(.9),
      // height: context.screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                LanguageSelector.projects(widget.isEnglish),
                style: context.textStyles.textBold.copyWith(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: context.percentHeight(.5),
                  //TODO: Check possibility to move to CarouselSlider
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemScrollController: scrollController,
                    itemCount: widget.apps.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(15),
                        height: context.percentHeight(.5),
                        width: context.screenWidth > 1200 ? context.percentWidth(.4) : context.percentWidth(.7),
                        child: LayoutBuilder(
                          builder: (_, constraints) {
                            return Container(
                              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    context.colors.black,
                                    Colors.grey[900]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(6, 6),
                                    blurRadius: 15,
                                  ),
                                  BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(-6, -6),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: ProjectItem(
                                apps: widget.apps,
                                constraints: constraints,
                                index: index,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Visibility(
                        visible: context.screenWidth > 700 ? index != 1 : false,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CustomButton(
                            padding: const EdgeInsets.only(),
                            onTap: () {
                              setState(() {
                                scrollController.scrollTo(
                                  index: --index - 1,
                                  duration: const Duration(milliseconds: 500),
                                );
                              });
                            },
                            icon: Icons.arrow_circle_left_outlined,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: context.screenWidth > 700 ? (widget.apps.length - 1) != index : false,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: CustomButton(
                            padding: const EdgeInsets.only(),
                            onTap: () {
                              if ((widget.apps.length - 1) != index) {
                                setState(() {
                                  scrollController.scrollTo(
                                    index: index++,
                                    duration: const Duration(milliseconds: 500),
                                  );
                                });
                              }
                            },
                            icon: Icons.arrow_circle_right_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
