import 'package:flutter/material.dart';

import '../../../models/education_item.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class EducationItem extends StatelessWidget {
  final Education education;
  final BoxConstraints constraints;

  const EducationItem({
    required this.education,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth / 2 - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline2Text(
            text: education.period,
            fontSize: 20,
          ),
          const SizedBox(height: 5),
          Text(
            education.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: kCaptionColor,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => htmlOpen(education.linkName),
              child: Text(
                education.linkName,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
