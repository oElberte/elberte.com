import 'package:flutter/material.dart';

import '../../../models/intro_item.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

IntroItemModel buildIntroItem(BuildContext context) {
  return IntroItemModel(
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Headline1Text(
          'MOBILE DEVELOPER',
          color: kPrimaryColor,
          fontSize: 16,
        ),
        const SizedBox(height: 18),
        const Headline1Text('ELBERTE\nPLINIO'),
        const SizedBox(height: 10),
        const Text(
          'Flutter como linguagem principal para desenvolvimento.',
          style: TextStyle(
            color: kCaptionColor,
            fontSize: 15,
            height: 1,
          ),
        ),
        const SizedBox(height: 5),
        Wrap(
          children: [
            const DescriptionText('Precisa de um aplicativo? '),
            GestureDetector(
              onTap: () => showContactDialog(context),
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: DescriptionText(
                  'Fale comigo.',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: TextButton(
              onPressed: () => htmlOpen(kLinkedinLink),
              child: const Text(
                'SAIBA MAIS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    ),
    image: Image.asset(
      'assets/elberte_background.png',
      fit: BoxFit.contain,
      width: 800,
      height: 800,
    ),
  );
}
