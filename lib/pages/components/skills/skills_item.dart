import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/on_hover_button.dart';
import '../../../utils/screen_helper.dart';
import 'skills_list.dart';

Widget buildSkillItem(BuildContext context, width) {
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
    childAspectRatio: width / 180,
    crossAxisSpacing: 20,
    children: skills
        .map(
          (skill) => OnHoverButton(
            builder: (isHovered) {
              return Container(
                width: ScreenHelper.isMobile(context) ? null : 420,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: isHovered ? Colors.grey[850] : null,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: skill.image,
                    ),
                    Text(
                      skill.name,
                      style: const TextStyle(
                        letterSpacing: 0.4,
                        color: Colors.white,
                        fontSize: 20,
                        shadows: [
                          Shadow(
                            offset: Offset(3, 3),
                            blurRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
        .toList(),
  );
}
