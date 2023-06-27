import 'package:flutter/material.dart';

import '../../ui/size_extensions.dart';

class ScrollDown extends StatefulWidget {
  const ScrollDown({
    super.key,
  });

  @override
  State<ScrollDown> createState() => _ScrollDownState();
}

class _ScrollDownState extends State<ScrollDown> with SingleTickerProviderStateMixin {
  var opacity = 1.0;

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  )..repeat(reverse: true);

  late final Animation<Offset> _animationVertical = Tween(
    begin: const Offset(0, -0.01),
    end: const Offset(0, 0.01),
  ).animate(_controller);

  late final Animation<double> _animationFade = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 0,
      left: (context.screenWidth < 700)
          ? context.percentWidth(.48)
          : context.screenWidth > 1200
              ? context.percentWidth(.4)
              : context.percentWidth(.3),
      child: FadeTransition(
        opacity: _animationFade,
        child: SlideTransition(
          position: _animationVertical,
          child: const Stack(
            children: [
              Positioned(
                bottom: 10,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              Positioned(
                bottom: 20,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              // Positioned(
              //   bottom: 30,
              //   child: Icon(
              //     Icons.keyboard_arrow_down,
              //     color: Colors.white,
              //     size: 32,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
