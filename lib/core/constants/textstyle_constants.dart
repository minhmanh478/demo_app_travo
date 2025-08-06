import 'package:demo_app_travo/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles(this.context);
  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: ColorPallette.text1Color,
    fontWeight: FontWeight.w400,
    height: 16 / 14,
  );
}

extension ExtendenTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get fontHeader {
    return copyWith(
      fontSize: 22,
      height: 22 / 20,
    );
  }

  TextStyle get fontCaption {
    return copyWith(
      fontSize: 12,
      height: 12 / 10,
    );
  }

  TextStyle get semibold {
    return copyWith(
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get bold {
    return copyWith(
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get text1Color {
    return copyWith(
      color: ColorPallette.text1Color,
    );
  }

  TextStyle get primaryTextColor {
    return copyWith(
      color: ColorPallette.primaryColor,
    );
  }

  TextStyle get whiteTextColor {
    return copyWith(
      color: Colors.white,
    );
  }

  TextStyle get subTitleTextColor {
    return copyWith(
      color: ColorPallette.subTitleColor,
    );
  }

  TextStyle setColor(Color color) {
    return copyWith(
      color: color,
    );
  }

  TextStyle setTextSize(double size) {
    return copyWith(
      fontSize: size,
    );
  }
}
