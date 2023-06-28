import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/skills_model.dart';

class SkillsItem extends StatelessWidget {
  final SkillsModel skill;
  final bool isHovered;

  const SkillsItem({
    super.key,
    required this.skill,
    required this.isHovered,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.5),
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            isHovered ? skill.iconHovered : skill.icon,
            color: isHovered ? null : Colors.white,
          ),
        ),
        const SizedBox(width: 20),
        AutoSizeText(
          skill.name,
          style: isHovered
              ? context.textStyles.textRegular.copyWith(
                  fontSize: 32,
                  color: context.colors.secondary,
                )
              : context.textStyles.textLight.copyWith(
                  fontSize: 32,
                  color: Colors.white,
                ),
        ),
      ],
    );
  }
}
