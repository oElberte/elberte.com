import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get fontFamilyLato => 'lato';
  String get fontFamilyOswald => 'oswald';

  TextStyle get textThin => TextStyle(
        fontWeight: FontWeight.w100,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textLight => TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textSemiBold => TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textBold => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textBlack => TextStyle(
        fontWeight: FontWeight.w900,
        fontFamily: fontFamilyLato,
      );

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
  TextStyle get textTitle => textBlack.copyWith(fontSize: 22);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
