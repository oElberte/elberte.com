import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';

class ShowDialogItem extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String contact;

  const ShowDialogItem({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (title == 'WhatsApp') {
              htmlOpen(kWhatsAppLink);
            } else {
              mailTo();
            }
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Row(
              children: [
                Image.asset(
                  'assets/contact/$imageAsset.png',
                  width: 30,
                ),
                const SizedBox(width: 15),
                Text(
                  title.toUpperCase(),
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
        const SizedBox(height: 15),
        SelectableText(
          contact,
          style: const TextStyle(
            color: kCaptionColor,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
