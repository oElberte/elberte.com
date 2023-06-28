import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnTapButton extends StatefulWidget {
  final Widget Function(bool isTapped) builder;

  const OnTapButton({
    super.key,
    required this.builder,
  });

  @override
  State<OnTapButton> createState() => _OnTapButtonState();
}

class _OnTapButtonState extends State<OnTapButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final tappedTransform = Matrix4.identity()
      ..translate(1.5, 0, 0)
      ..scale(1.075);
    final transform = isTapped ? tappedTransform : Matrix4.identity();

    return InkWell(
      onTap: () => onEntered(!isTapped),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: AnimatedContainer(
        curve: Sprung.overDamped,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isTapped),
      ),
    );
  }

  void onEntered(bool isTapped) => setState(() => this.isTapped = isTapped);
}
