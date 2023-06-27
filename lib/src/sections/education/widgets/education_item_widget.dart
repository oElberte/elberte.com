import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/size_extensions.dart';
import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/education_model.dart';
import 'education_item_date_widget.dart';

class EducationItem extends StatelessWidget {
  final EducationModel education;

  const EducationItem({
    super.key,
    required this.education,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: AutoSizeText.rich(
                TextSpan(
                  text: education.type,
                  children: [
                    TextSpan(
                      text: ' em ${education.name}',
                      style: context.textStyles.textRegular.copyWith(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  style: context.textStyles.textSemiBold.copyWith(
                    fontSize: 36,
                    color: context.colors.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: context.screenWidth < 700,
          child: Column(
            children: [
              const SizedBox(height: 20),
              EducationItemDate(
                isMobile: true,
                education: education,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            AutoSizeText(
              education.university,
              style: context.textStyles.textSemiBold.copyWith(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
            Visibility(
              visible: context.screenWidth > 700,
              child: EducationItemDate(
                education: education,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
