import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const Button({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: Colors.white,
          shadows: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(3, 3),
            ),
          ],
          size: 42,
        ),
      ),
    );
  }
}
