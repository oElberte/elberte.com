import 'package:flutter/material.dart';

import '../../ui/styles/text_styles.dart';

class ScrollDown extends StatelessWidget {
  const ScrollDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: RotatedBox(
          quarterTurns: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Role para baixo',
                style: context.textStyles.textRegular.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
