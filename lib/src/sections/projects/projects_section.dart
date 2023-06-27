import 'package:flutter/material.dart';

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
    final controller = ScrollController();
    var offset = 0.0;

    return SizedBox(
      width: double.infinity,
      height: context.percentHeight(.57),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: context.percentHeight(.5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: apps.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
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
                            // color: Colors.blueGrey[900],
                            // color: Colors.grey[900]!,
                            border: Border.all(
                                // color: context.colors.primary,
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
                            apps: apps,
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
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CustomButton(
                      onTap: () {
                        controller.animateTo(
                          offset -= context.screenWidth > 1200 ? context.percentWidth(.4) : context.percentWidth(.7),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: Icons.arrow_circle_left_outlined,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Projetos',
                      style: context.textStyles.textBlack.copyWith(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomButton(
                      onTap: () {
                        controller.animateTo(
                          offset += context.screenWidth > 1200 ? context.percentWidth(.4) : context.percentWidth(.7),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: Icons.arrow_circle_right_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
