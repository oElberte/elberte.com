import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Globals {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static AutoScrollController kController = AutoScrollController();
  static CarouselController carouselController = CarouselController();

  void scrollToIndex(int index) {
    kController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.middle,
    );
  }
}
