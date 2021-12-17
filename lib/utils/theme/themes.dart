import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/utils/responsive_size/app_config.dart';


import 'text_styles.dart';

class Themes {
  //light theme
  static final light = ThemeData.light().copyWith(
    buttonColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.black),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Colors.yellow,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    splashColor: Colors.yellow,
    textTheme: TextTheme(
      headline5: AppTextStyles.getDefaultFontStyle(
        fontSize: AppConfig.dimen.defaultFontSize,
      ),
      bodyText1: AppTextStyles.getDefaultFontStyle(
        fontSize: AppConfig.dimen.defaultFontSize,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );

  //dark theme
  static final dark = ThemeData.dark().copyWith(
    buttonColor: Colors.red,
    iconTheme: IconThemeData(color: Colors.white),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Colors.amber,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.grey[900],
    ),
    splashColor: Colors.grey[900],
    textTheme: TextTheme(
      headline5: AppTextStyles.getDefaultFontStyle(
        fontSize: AppConfig.dimen.defaultFontSize,
      ),
      bodyText1: AppTextStyles.getDefaultFontStyle(
        fontSize: AppConfig.dimen.defaultFontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
