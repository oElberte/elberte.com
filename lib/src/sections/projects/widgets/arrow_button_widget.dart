import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 30),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
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
