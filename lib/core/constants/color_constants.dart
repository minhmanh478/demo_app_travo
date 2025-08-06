import 'package:flutter/material.dart';

class ColorPallette {
  static const Color primaryColor = Color(0xFF6357CC);
  static const Color secondColor = Color(0xFF8F67E8);
  static const Color yellowColor = Color(0xFFFE9C5E);

  static const Color dividerColor = Color(0xFF6155CC);
  static const Color text1Color = Color(0xFF6155CC);
  static const Color subTitleColor = Color(0xFF6155CC);
  static const Color backgroupScaffoldColor = Color(0xFF6155CC);
  static const Color whiteTextColor = Color(0xFFFFFFFF);
}

class Gradients {
  static Gradient defauldGradienBackground = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPallette.secondColor,
      ColorPallette.primaryColor,
    ],
  );
}
