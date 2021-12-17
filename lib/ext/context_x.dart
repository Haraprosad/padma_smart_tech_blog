import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  // Returns the MediaQuery
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  /// Returns same as MediaQuery.of(context).size
  Size get sizePx => mq.size;

  /// Returns same as MediaQuery.of(context).size.width
  double get widthPx => sizePx.width;

  /// Returns same as MediaQuery.of(context).height
  double get heightPx => sizePx.height;

  // percent height
  double percentWpx(num value) => (widthPx * value) / 100.0;
  double percentHpx(num value) => (widthPx * value) / 100.0;

  //get theme
  ThemeData get themeData => Theme.of(this);

  TextTheme get textThemeData => Theme.of(this).textTheme;

  bool get isDark => themeData.brightness == Brightness.dark;
}

