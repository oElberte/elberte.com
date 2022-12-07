import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../models/skill_item.dart';

const double _width = 50;
const double _height = 50;

List<SkillItem> skills = [
  SkillItem(
    name: 'Flutter\n1 ano',
    image: const ImageDropShadow('assets/skills/flutter-icon.png'),
  ),
  SkillItem(
    name: 'Swift\n6 meses',
    image: const ImageDropShadow('assets/skills/swift-icon.webp'),
  ),
  SkillItem(
    name: 'Git\n1 ano',
    image: const ImageDropShadow('assets/skills/git-icon.png'),
  ),
  SkillItem(
    name: 'MySQL\n1 ano',
    image: const ImageDropShadow('assets/skills/mysql-icon.png'),
  ),
];

class ImageDropShadow extends StatelessWidget {
  final String imagePath;
  const ImageDropShadow(
    this.imagePath, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.3,
          child: Image.asset(
            imagePath,
            width: _width,
            height: _height,
            color: Colors.black,
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.asset(
              imagePath,
              width: _width,
              height: _height,
            ),
          ),
        ),
      ],
    );
  }
}
