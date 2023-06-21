import 'package:flutter/material.dart';

import 'src/core/ui/styles/text_styles.dart';
import 'src/core/ui/theme/theme_config.dart';
import 'src/core/widgets/app_bar/app_bar_logo.dart';

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
      // themeMode: ThemeMode.dark,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const AppBarLogo(),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ELBERTE PLINIO',
                style: context.textStyles.textTitle.copyWith(
                  fontSize: 72,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 80,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Contato'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
