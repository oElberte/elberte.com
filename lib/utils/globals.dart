import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Globals {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static AutoScrollController kController = AutoScrollController();

  void scrollToIndex(int index) {
    kController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.middle,
    );
  }
}
