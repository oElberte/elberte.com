import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../models/skill.dart';

const double _width = 50;
const double _height = 50;

List<Skill> skills = [
  Skill(
    skill: 'Flutter',
    image: const ImageDropShadow('assets/skills/flutter-icon.png'),
  ),
  Skill(
    skill: 'Swift',
    image: const ImageDropShadow('assets/skills/swift-icon.webp'),
  ),
  Skill(
    skill: 'Git',
    image: const ImageDropShadow('assets/skills/git-icon.png'),
  ),
  Skill(
    skill: 'MySQL',
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
