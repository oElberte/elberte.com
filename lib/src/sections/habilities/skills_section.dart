import 'package:flutter/material.dart';

import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../models/skills_model.dart';
import 'widgets/skills_item_widget.dart';

class SkillsSection extends StatelessWidget {
  final List<SkillsModel> skills;

  const SkillsSection({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: context.percentHeight(.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Habilidades',
              style: context.textStyles.textBold.copyWith(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: context.screenWidth,
            height: 400,
            child: GridView.builder(
              itemCount: skills.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 80,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                maxCrossAxisExtent: context.screenWidth > 1200 ? context.screenWidth / 2 : context.screenWidth / 2,
              ),
              itemBuilder: (context, index) {
                return SkillsItem(
                  skill: skills[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
