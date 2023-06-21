import 'package:flutter/material.dart';

import 'src/core/ui/styles/text_styles.dart';
import 'src/core/ui/theme/theme_config.dart';
import 'src/core/widgets/custom_app_bar/custom_app_bar.dart';

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
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customAppBar(context),
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
