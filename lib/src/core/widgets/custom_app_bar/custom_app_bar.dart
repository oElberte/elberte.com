import 'package:flutter/material.dart';

import '../../helpers/html_open.dart';
import '../../ui/styles/colors_app.dart';
import '../../ui/styles/text_styles.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    title: InkWell(
      // cursor: SystemMouseCursors.click,
      onTap: context.openLinkedin,
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'E',
                  style: context.textStyles.textBold.copyWith(
                    color: Colors.white,
                    fontFamily: context.textStyles.fontFamilyOswald,
                    fontSize: 36,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: context.textStyles.textBold.copyWith(
                    color: context.colors.primary,
                    fontFamily: context.textStyles.fontFamilyOswald,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    ),
    actions: [
      AppBarButton(
        label: 'INICIO',
        onPressed: () {},
      ),
      AppBarButton(
        label: 'PROJETOS',
        onPressed: () {},
      ),
      AppBarButton(
        label: 'EDUCAÇÃO',
        onPressed: () {},
      ),
      AppBarButton(
        label: 'CERTIFICADOS',
        onPressed: () {},
        lastButton: true,
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          child: const Text('CONTATO'),
          onPressed: () {},
        ),
      ),
    ],
  );
}

class AppBarButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool lastButton;

  const AppBarButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.lastButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: lastButton ? const EdgeInsets.all(0) : const EdgeInsets.only(right: 5),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: context.textStyles.textBold.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
