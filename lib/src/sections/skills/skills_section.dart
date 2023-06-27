import 'package:flutter/material.dart';

import '../../core/ui/on_hover_button.dart';
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
      height: context.percentHeight(.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Habilidades',
              style: context.textStyles.textBold.copyWith(
                color: Colors.white,
                fontSize: 42,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: context.screenWidth > 700,
            replacement: Column(
              children: [
                ...skills
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: OnHoverButton(
                          builder: (isHovered) {
                            return SizedBox(
                              height: context.percentHeight(.075),
                              child: SkillsItem(
                                skill: e,
                                isHovered: isHovered,
                              ),
                            );
                          },
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            child: SizedBox(
              width: context.screenWidth,
              height: 400,
              child: GridView.builder(
                itemCount: skills.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 80,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: context.screenWidth > 1200 ? context.screenWidth / 2 : context.screenWidth / 2,
                ),
                itemBuilder: (context, index) {
                  return OnHoverButton(
                    builder: (isHovered) {
                      return SkillsItem(
                        skill: skills[index],
                        isHovered: isHovered,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
