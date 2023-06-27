import 'package:flutter/material.dart';

import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../models/education_model.dart';
import 'widgets/education_item_widget.dart';

class EducationSection extends StatelessWidget {
  final List<EducationModel> educations;

  const EducationSection({
    super.key,
    required this.educations,
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
              'Formação',
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
          Visibility(
            visible: context.screenWidth > 700,
            replacement: Column(
              children: [
                ...educations
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          child: EducationItem(
                            education: e,
                          ),
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
                itemCount: educations.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 120,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: context.screenWidth > 1360 ? context.screenWidth / 2 : context.screenWidth / 1,
                ),
                itemBuilder: (context, index) {
                  return EducationItem(
                    education: educations[index],
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
