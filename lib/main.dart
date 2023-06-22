import 'src/core/template/base_layout.dart';
import 'src/core/ui/size_extensions.dart';
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
    final width = context.screenWidth > 1200 ? context.percentWidth(.90) : context.percentWidth(.80);
    
    return MaterialApp(
      title: 'Elberte',
      theme: ThemeConfig.theme,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: BaseLayout(
          children: [
            IntroSection(
              height: context.screenHeight,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
