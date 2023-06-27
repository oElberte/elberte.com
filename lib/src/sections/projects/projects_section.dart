import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../models/apps_model.dart';
import 'widgets/arrow_button_widget.dart';
import 'widgets/project_item_widget.dart';

class ProjectsSection extends StatelessWidget {
  final List<AppsModel> apps;

  const ProjectsSection({
    super.key,
    required this.apps,
  });

  @override
  Widget build(BuildContext context) {
    final controller = AutoScrollController();

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
                'Projetos',
                style: context.textStyles.textBold.copyWith(
                  color: Colors.white,
                  fontSize: 36,
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
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    itemCount: apps.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
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
                              child: AutoScrollTag(
                                key: ValueKey(index),
                                index: index,
                                controller: controller,
                                child: ProjectItem(
                                  apps: apps,
                                  constraints: constraints,
                                  index: index,
                                ),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomButton(
                          padding: const EdgeInsets.only(),
                          onTap: () {
                            controller.animateTo(
                              context.screenWidth > 1200
                                  ? controller.offset - context.percentWidth(.45)
                                  : controller.offset - context.percentWidth(.75),
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          icon: Icons.arrow_circle_left_outlined,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          padding: const EdgeInsets.only(),
                          onTap: () {
                            controller.animateTo(
                              context.screenWidth > 1200
                                  ? controller.offset + context.percentWidth(.45)
                                  : controller.offset + context.percentWidth(.75),
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          icon: Icons.arrow_circle_right_outlined,
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
