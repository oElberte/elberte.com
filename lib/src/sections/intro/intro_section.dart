// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/helpers/language_selector.dart';
import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class IntroSection extends StatefulWidget {
  final bool isEnglish;

  const IntroSection({
    super.key,
    required this.isEnglish,
  });

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  final ValueNotifier<bool> _showVN = ValueNotifier(false);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(milliseconds: 700),
      (_) => _showVN.value = !_showVN.value,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
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
                    LanguageSelector.myName(widget.isEnglish),
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
                        LanguageSelector.mobileDev(widget.isEnglish),
                        style: context.textStyles.textSemiBold.copyWith(
                          fontSize: context.screenWidth > 1300 ? 82 : 68,
                          color: context.colors.primary,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        child: ValueListenableBuilder(
                          valueListenable: _showVN,
                          builder: (_, showVNValue, child) {
                            return Visibility(
                              visible: showVNValue,
                              child: Text(
                                '.',
                                style: context.textStyles.textSemiBold.copyWith(
                                  fontSize: context.screenWidth > 1300 ? 82 : 68,
                                  color: context.colors.primary,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                FittedBox(
                  child: Text(
                    LanguageSelector.mobileDev2(widget.isEnglish),
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
