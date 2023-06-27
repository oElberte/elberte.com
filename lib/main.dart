import 'dart:convert';

import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/services.dart';

import 'src/core/template/base_layout.dart';
import 'src/core/ui/size_extensions.dart';
import 'src/core/ui/styles/colors_app.dart';
import 'src/core/widgets/left_menu_bar.dart';
import 'src/models/apps_model.dart';
import 'src/models/certifications_model.dart';
import 'src/models/education_model.dart';
import 'src/models/skills_model.dart';
import 'src/sections/certificates/certificates_section.dart';
import 'src/sections/education/education_section.dart';
import 'src/sections/skills/skills_section.dart';
import 'src/sections/intro/intro_section.dart';
import 'package:flutter/material.dart';

import 'src/core/ui/theme/theme_config.dart';
import 'src/sections/projects/projects_section.dart';

void main() {
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
  Future<dynamic> readJson() async {
    final String response = await rootBundle.loadString('database.json');
    return await json.decode(response);
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var index = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: AnimateGradient(
        primaryBegin: Alignment.bottomLeft,
        primaryEnd: Alignment.topRight,
        secondaryBegin: Alignment.topRight,
        secondaryEnd: Alignment.bottomLeft,
        primaryColors: [
          const Color(0XFF140E0E),
          context.colors.black.withOpacity(.98),
          context.colors.black.withOpacity(.98),
          const Color(0XFF140E0E),
        ],
        secondaryColors: [
          context.colors.black.withOpacity(.98),
          const Color(0XFF140E0E),
          const Color(0XFF140E0E),
          context.colors.black.withOpacity(.98),
        ],
        child: FutureBuilder<dynamic>(
          future: readJson(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final List<AppsModel> apps = snapshot.data['apps']
                  .map<AppsModel>(
                    (a) => AppsModel.fromMap(a),
                  )
                  .toList();
              final List<SkillsModel> skills = snapshot.data['skills']
                  .map<SkillsModel>(
                    (s) => SkillsModel.fromMap(s),
                  )
                  .toList();
              final List<EducationModel> educations = snapshot.data['education']
                  .map<EducationModel>(
                    (e) => EducationModel.fromMap(e),
                  )
                  .toList();
              final List<CertificationsModel> certifications = snapshot.data['certifications']
                  .map<CertificationsModel>(
                    (e) => CertificationsModel.fromMap(e),
                  )
                  .toList();

              return BaseLayout(
                scaffoldKey: _scaffoldKey,
                navigateTo: index,
                children: [
                  const IntroSection(),
                  ProjectsSection(
                    apps: apps.where((a) => a.enabled == true).toList(),
                  ),
                  SkillsSection(
                    skills: skills.where((s) => s.enabled == true).toList(),
                  ),
                  EducationSection(
                    educations: educations.where((e) => e.enabled == true).toList(),
                  ),
                  CertificatesSection(
                    certificates: certifications.where((c) => c.enabled == true).toList(),
                  ),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
