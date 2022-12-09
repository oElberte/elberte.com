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
          GestureDetector(
            onTap: () {
              if (item.text == kEmail) {
                mailTo();
              } else {
                htmlOpen(kWhatsAppLink);
              }
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                mainAxisAlignment: item.title == 'EMAIL'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: [
                  Image.asset(
                    item.iconPath,
                    width: 30,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    item.title,
                    style: GoogleFonts.oswald(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
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
