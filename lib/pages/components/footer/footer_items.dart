import 'package:elberte_com/utils/constants.dart';

import '../../../models/footer_item.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: 'assets/contact/mail.png',
    title: 'EMAIL',
    text: kEmail,
  ),
  FooterItem(
    iconPath: 'assets/contact/whatsapp.png',
    title: 'WHATSAPP',
    text: kNumber,
  ),
];