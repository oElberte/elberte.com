import 'dart:convert';

import 'package:flutter/services.dart';

import 'src/core/template/base_layout.dart';
import 'src/models/apps_model.dart';
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
  Future<dynamic> readJson() async {
    final String response = await rootBundle.loadString('database.json');
    return await json.decode(response);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elberte',
      theme: ThemeConfig.theme,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: FutureBuilder<dynamic>(
          future: readJson(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final List<AppsModel> apps = snapshot.data['apps'].map<AppsModel>((a) => AppsModel.fromMap(a)).toList();

              return BaseLayout(
                children: [
                  const IntroSection(),
                  ProjectsSection(
                    apps: apps.where((a) => a.enabled == true).toList(),
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
