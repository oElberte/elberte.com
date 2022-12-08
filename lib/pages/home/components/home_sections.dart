import 'package:flutter/material.dart';

import '../../components/components.dart';

final List<Widget> homeSections = [
  // const HeaderSection(),
  const Padding(
    padding: EdgeInsets.only(top: 20),
    child: IntroSection(),
  ),
  const PortfolioSection(),
  const EducationSection(),
  const SkillsSection(),
  const FooterSection(),
];
