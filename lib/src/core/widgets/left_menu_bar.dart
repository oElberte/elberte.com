import 'package:flutter/material.dart';

import '../helpers/html_open.dart';
import '../ui/size_extensions.dart';
import '../ui/styles/colors_app.dart';
import '../ui/styles/text_styles.dart';
import 'left_menu_button.dart';
import 'social_media_button.dart';

class LeftMenuBar extends StatefulWidget {
  final double width;

  const LeftMenuBar({
    super.key,
    required this.width,
  });

  @override
  State<LeftMenuBar> createState() => _LeftMenuBarState();
}

class _LeftMenuBarState extends State<LeftMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: widget.width,
          height: context.screenHeight,
          color: Colors.black,
        ),
        SingleChildScrollView(
          child: SizedBox(
            width: widget.width,
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
                      label: 'Sobre mim',
                      onPressed: () {},
                    ),
                    LeftMenuButton(
                      label: 'Projetos',
                      onPressed: () {},
                    ),
                    LeftMenuButton(
                      label: 'Habilidades',
                      onPressed: () {},
                    ),
                    LeftMenuButton(
                      label: 'Educação',
                      onPressed: () {},
                    ),
                    LeftMenuButton(
                      label: 'Certificados',
                      onPressed: () {},
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

class LeftMenuLogo extends StatefulWidget {
  const LeftMenuLogo({
    super.key,
  });

  @override
  State<LeftMenuLogo> createState() => _LeftMenuLogoState();
}

class _LeftMenuLogoState extends State<LeftMenuLogo> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: AnimatedPhysicalModel(
        duration: const Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
        elevation: isHover ? 6 : 0,
        shape: BoxShape.rectangle,
        shadowColor: context.colors.primary,
        color: Colors.black,
        child: InkWell(
          onTap: context.openLinkedin,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'E',
                style: context.textStyles.textBold.copyWith(
                  color: Colors.white,
                  fontFamily: context.textStyles.fontFamilyOswald,
                  fontSize: 122,
                ),
              ),
              Text(
                '.',
                style: context.textStyles.textBold.copyWith(
                  color: context.colors.primary,
                  fontFamily: context.textStyles.fontFamilyOswald,
                  fontSize: 116,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
