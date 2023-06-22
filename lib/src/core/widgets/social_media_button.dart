import 'package:flutter/material.dart';

import '../ui/styles/colors_app.dart';

class SocialMediaButton extends StatefulWidget {
  final VoidCallback onTap;
  final String icon;

  const SocialMediaButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  var onHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) => setState(() => onHover = value),
      child: Image.asset(
        'assets/icons/${widget.icon}.png',
        height: 28,
        color: onHover ? context.colors.secondary : null,
      ),
    );
  }
}
