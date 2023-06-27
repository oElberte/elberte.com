import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/html_open.dart';
import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/apps_model.dart';
import 'image_carousel_widget.dart';

class ProjectItem extends StatelessWidget {
  final List<AppsModel> apps;
  final BoxConstraints constraints;
  final int index;

  const ProjectItem({
    super.key,
    required this.apps,
    required this.constraints,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.5),
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: constraints.maxHeight,
          child: ImageCarousel(
            apps: apps,
            index: index,
            height: constraints.maxHeight,
          ),
        ),
        const SizedBox(width: 20),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: AutoSizeText(
                  apps[index].name,
                  style: context.textStyles.textSemiBold.copyWith(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              Expanded(
                flex: 5,
                child: AutoSizeText(
                  apps[index].description,
                  textAlign: TextAlign.justify,
                  style: context.textStyles.textLight.copyWith(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.openApp(apps[index].link ?? ''),
                    style: ElevatedButton.styleFrom(backgroundColor: context.colors.secondary),
                    child: const Text('VEJA MAIS'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
