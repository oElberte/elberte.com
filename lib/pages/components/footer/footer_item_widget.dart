import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/footer_item.dart';
import '../../../utils/utils.dart';

class FooterItemWidget extends StatelessWidget {
  final FooterItem item;
  final BoxConstraints constraints;

  const FooterItemWidget({
    required this.item,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: ScreenHelper.isMobile(context)
          ? constraints.maxWidth / 1.95 - 20
          : constraints.maxWidth / 2 - 20,
      child: Column(
        crossAxisAlignment: item.title == 'EMAIL'
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          //GestureDetector
          //MouseRegion - SystemMouseCursors.click
          TextButton.icon(
            onPressed: () {
              if (item.text == kEmail) {
                mailTo();
              } else {
                htmlOpen(kWhatsAppLink);
              }
            },
            icon: Image.asset(item.iconPath, width: 30, height: 30),
            label: Text(
              item.title,
              style: GoogleFonts.oswald(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SelectableText(
            item.text,
            style: const TextStyle(
              color: kCaptionColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
