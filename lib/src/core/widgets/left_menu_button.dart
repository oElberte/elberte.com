import 'package:flutter/material.dart';

import '../ui/styles/colors_app.dart';
import '../ui/styles/text_styles.dart';

class LeftMenuButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool lastButton;

  const LeftMenuButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.lastButton = false,
  });

  @override
  State<LeftMenuButton> createState() => _LeftMenuButtonState();
}

class _LeftMenuButtonState extends State<LeftMenuButton> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: widget.onPressed,
        onHover: (value) => setState(() => isHover = value),
        child: FittedBox(
          child: Text(
            widget.label,
            style: context.textStyles.textLight.copyWith(
              color: isHover ? context.colors.secondary : Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
