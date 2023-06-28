// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  bool _show = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 700), (_) {
      setState(() => _show = !_show);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight,
      width: context.screenWidth,
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'Olá! Meu nome é',
                    style: context.textStyles.textLight.copyWith(
                      fontSize: context.screenWidth > 1300 ? 42 : 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  child: Text(
                    'Elberte Plínio,',
                    style: context.textStyles.textBlack.copyWith(
                      fontSize: context.screenWidth > 1300 ? 136 : 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'desenvolvedor mobile',
                        style: context.textStyles.textSemiBold.copyWith(
                          fontSize: context.screenWidth > 1300 ? 82 : 68,
                          color: context.colors.primary,
                        ),
                      ),
                      Visibility(
                        visible: _show,
                        child: Text(
                          '.',
                          style: context.textStyles.textSemiBold.copyWith(
                          fontSize: context.screenWidth > 1300 ? 82 : 68,
                            color: context.colors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                FittedBox(
                  child: Text(
                    'Desenvolvedor de aplicações para celular com Flutter.',
                    textAlign: TextAlign.center,
                    style: context.textStyles.textLight.copyWith(
                      fontSize: context.screenWidth > 1300 ? 24 : 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
