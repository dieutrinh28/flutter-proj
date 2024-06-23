import 'package:flutter/material.dart';

extension CustomTextStyle on TextStyle {
  // font size
  TextStyle get size4 => copyWith(fontSize: 4);

  TextStyle get size6 => copyWith(fontSize: 6);

  TextStyle get size8 => copyWith(fontSize: 8);

  TextStyle get size10 => copyWith(fontSize: 10);

  TextStyle get size12 => copyWith(fontSize: 12);

  TextStyle get size14 => copyWith(fontSize: 14);

  TextStyle get size16 => copyWith(fontSize: 16);

  TextStyle get size18 => copyWith(fontSize: 18);

  TextStyle get size20 => copyWith(fontSize: 20);

  TextStyle get size22 => copyWith(fontSize: 22);

  TextStyle get size24 => copyWith(fontSize: 24);

  TextStyle get size26 => copyWith(fontSize: 26);

  // font weight
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);

  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);

  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);

  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);

  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);

  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);

  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);

  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  // color
  TextStyle withColor(Color color) => copyWith(color: color);
}

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle base = TextStyle();
}
