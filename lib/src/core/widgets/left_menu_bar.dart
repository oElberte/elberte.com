import 'package:flutter/material.dart';

import '../helpers/html_open.dart';
import '../ui/size_extensions.dart';
import 'left_menu_button.dart';
import 'left_menu_logo.dart';
import 'social_media_button.dart';

class LeftMenuBar extends StatelessWidget {
  final double width;
  final Function(int index) navigateTo;

  const LeftMenuBar({
    super.key,
    required this.width,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: context.screenHeight,
          color: Colors.black,
        ),
        SingleChildScrollView(
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                Column(
                  children: [
                    const LeftMenuLogo(),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 30,
                      endIndent: 30,
                    ),
                    LeftMenuButton(
                      label: 'Início',
                      onPressed: () => navigateTo(0),
                    ),
                    LeftMenuButton(
                      label: 'Projetos',
                      onPressed: () => navigateTo(1),
                    ),
                    LeftMenuButton(
                      label: 'Habilidades',
                      onPressed: () => navigateTo(2),
                    ),
                    LeftMenuButton(
                      label: 'Formação',
                      onPressed: () => navigateTo(3),
                    ),
                    LeftMenuButton(
                      label: 'Certificados',
                      onPressed: () => navigateTo(4),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 30,
                      endIndent: 30,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialMediaButton(
                          onTap: context.openLinkedin,
                          icon: 'linkedin',
                        ),
                        SocialMediaButton(
                          onTap: context.openGithub,
                          icon: 'github',
                        ),
                        SocialMediaButton(
                          onTap: context.openWhatsApp,
                          icon: 'whatsapp',
                        ),
                        SocialMediaButton(
                          onTap: context.openMailTo,
                          icon: 'mail',
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
