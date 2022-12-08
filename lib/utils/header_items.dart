import 'package:elberte_com/utils/globals.dart';

import '../models/header_item.dart';

List<HeaderItem> headerItems = [
  HeaderItem(
    title: 'INÍCIO',
    onTap: () {
      scrollTo(0);
      Globals.scaffoldKey.currentState!.closeEndDrawer();
    },
  ),
  HeaderItem(
    title: 'EXPERIÊNCIA',
    onTap: () {
      scrollTo(1);
      Globals.scaffoldKey.currentState!.closeEndDrawer();
    },
  ),
  HeaderItem(
    title: 'CERTIFICADOS',
    onTap: () {
      scrollTo(2);
      Globals.scaffoldKey.currentState!.closeEndDrawer();
    },
  ),
  HeaderItem(
    title: 'HABILIDADES',
    onTap: () {
      scrollTo(3);
      Globals.scaffoldKey.currentState!.closeEndDrawer();
    },
  ),
  HeaderItem(
    title: 'CONTATO',
    onTap: () {},
    isButton: true,
  ),
];

void scrollTo(int index) {
  Globals().scrollToIndex(index);
}
