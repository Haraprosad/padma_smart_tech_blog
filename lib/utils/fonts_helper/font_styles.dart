import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/ext/num_x.dart';
import 'package:padma_smart_tech_blog/gen/fonts.gen.dart';
import 'package:padma_smart_tech_blog/utils/sp/sp_utils.dart';


class FontStyles {
  static getDefaultFontStyle({
    double fontSize = 15.0,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: fontSize.fontSize,
      fontFamily: _getDefaultFontFamily(),
      color: color,
      fontWeight: fontWeight,
    );
  }

  static String _getDefaultFontFamily() {
    // TODO add other languages fonts
    switch (SpUtils.getLangCode()) {
      case "en":
        return FontFamily.dancing;
      case "bn":
        return FontFamily.siyam;
      default:
        return FontFamily.dancing;
    }
  }
}
