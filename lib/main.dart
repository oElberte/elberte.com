import 'src/core/template/base_layout.dart';
import 'src/sections/intro_section.dart';
import 'package:flutter/material.dart';

import 'src/core/ui/theme/theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elberte',
      theme: ThemeConfig.theme,
      home: const Scaffold(
        extendBodyBehindAppBar: true,
        body: BaseLayout(
          children: [
            IntroSection(),
          ],
        ),
      ),
    );
  }
}
