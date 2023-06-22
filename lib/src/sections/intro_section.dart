import 'package:flutter/material.dart';

import '../core/ui/size_extensions.dart';
import '../core/ui/styles/colors_app.dart';
import '../core/ui/styles/text_styles.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Container(
          height: context.screenHeight,
          width: context.screenWidth > 1200 ? context.percentWidth(.90) : context.percentWidth(.80),
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
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              FittedBox(
                child: Text(
                  'Elberte Plínio,',
                  style: context.textStyles.textBlack.copyWith(
                    fontSize: 136,
                    color: Colors.white,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  'desenvolvedor mobile.',
                  style: context.textStyles.textSemiBold.copyWith(
                    fontSize: 82,
                    color: context.colors.primary,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              FittedBox(
                child: Text(
                  'Desenvolvedor de aplicações para celular com Flutter.',
                  textAlign: TextAlign.center,
                  style: context.textStyles.textLight.copyWith(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
