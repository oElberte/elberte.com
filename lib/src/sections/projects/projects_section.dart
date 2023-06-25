import 'package:flutter/material.dart';

import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../models/apps_model.dart';
import 'widgets/project_item_widget.dart';

class ProjectsSection extends StatelessWidget {
  final List<AppsModel> apps;

  const ProjectsSection({
    super.key,
    required this.apps,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      height: context.percentHeight(.5),
      width: context.screenWidth > 1200 ? context.percentWidth(.4) : context.screenWidth,
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              // color: Colors.black54,
              border: Border.all(
                color: context.colors.primary,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(6, 6),
                  blurRadius: 15,
                ),
              ],
            ),
            child: ProjectItem(
              apps: apps,
              constraints: constraints,
              index: 0,
            ),
          );
        },
      ),
    );
  }
}
