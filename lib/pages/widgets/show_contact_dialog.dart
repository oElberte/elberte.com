import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/screen_helper.dart';
import 'widgets.dart';

void showContactDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => SimpleDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      backgroundColor: Colors.grey[900]!.withAlpha(200),
      contentPadding: EdgeInsets.all(ScreenHelper.isMobile(context) ? 14 : 50),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ShowDialogItem(
              title: 'Email',
              imageAsset: 'mail',
              contact: kEmail,
            ),
            SizedBox(width: ScreenHelper.isMobile(context) ? 15 : 50),
            const ShowDialogItem(
              title: 'WhatsApp',
              imageAsset: 'whatsapp',
              contact: kNumber,
            )
          ],
        ),
      ],
    ),
  );
}
