import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/language_selector.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/education_model.dart';

class EducationItemDate extends StatelessWidget {
  final EducationModel education;
  final bool isMobile;
  final bool isEnglish;

  const EducationItemDate({
    super.key,
    required this.education,
    this.isMobile = false,
    required this.isEnglish,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: !isMobile,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.circle,
              size: 4,
              color: Colors.white,
            ),
          ),
        ),
        AutoSizeText(
          '${education.startDate} - ',
          style: context.textStyles.textLight.copyWith(
            fontSize: 26,
            color: Colors.grey.withOpacity(.75),
          ),
        ),
        AutoSizeText(
          education.present ? LanguageSelector.present(isEnglish) : education.endDate.toString(),
          style: context.textStyles.textLight.copyWith(
            fontSize: 26,
            color: Colors.grey.withOpacity(.75),
          ),
        ),
      ],
    );
  }
}
