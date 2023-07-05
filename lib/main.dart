import 'package:url_strategy/url_strategy.dart';

import 'database/database_reader.dart';
import 'src/core/template/base_layout.dart';
import 'src/core/ui/size_extensions.dart';
import 'src/core/ui/styles/colors_app.dart';
import 'src/core/widgets/left_menu_bar.dart';
import 'src/sections/certificates/certificates_section.dart';
import 'src/sections/education/education_section.dart';
import 'src/sections/skills/skills_section.dart';
import 'src/sections/intro/intro_section.dart';
import 'package:flutter/material.dart';

import 'src/core/ui/theme/theme_config.dart';
import 'src/sections/projects/projects_section.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elberte',
      theme: ThemeConfig.theme,
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var index = ValueNotifier(0);

  var isEnglish = false;

  @override
  Widget build(BuildContext context) {
    final database = DatabaseReader(isEnglish);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            const Color(0XFF140E0E),
            context.colors.black.withOpacity(.9),
            const Color(0XFF140E0E),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        key: _scaffoldKey,
        drawer: Drawer(
          width: context.percentWidth(.7),
          backgroundColor: context.colors.black,
          child: LeftMenuBar(
            width: context.percentWidth(.7),
            navigateTo: (i) {
              Navigator.pop(context);

              index.value = i;
            },
          ),
        ),
        extendBodyBehindAppBar: true,
        body: BaseLayout(
          scaffoldKey: _scaffoldKey,
          navigateTo: index,
          isEnglish: (value) {
            setState(() {
              isEnglish = value;
            });
          },
          children: [
            const IntroSection(),
            ProjectsSection(
              apps: database.apps().where((a) => a.enabled == true).toList(),
            ),
            SkillsSection(
              skills: database.skills().where((s) => s.enabled == true).toList(),
            ),
            EducationSection(
              educations: database.education().where((e) => e.enabled == true).toList(),
            ),
            CertificatesSection(
              certificates: database.certifications().where((c) => c.enabled == true).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
