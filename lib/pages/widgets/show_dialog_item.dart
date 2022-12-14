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
      crossAxisAlignment: title == 'WhatsApp'
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {
            if (title == 'WhatsApp') {
              htmlOpen(kWhatsAppLink);
            } else {
              mailTo();
            }
          },
          icon: Image.asset(
            'assets/contact/$imageAsset.png',
            width: 30,
            height: 30,
          ),
          label: Text(
            title.toUpperCase(),
            style: GoogleFonts.oswald(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
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
