import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/ui/home_screen/home_main_ui.dart';
import 'package:padma_smart_tech_blog/utils/responsive_size/app_config.dart';
import 'package:get/get.dart';
import 'utils/theme/theme_data.dart';
import 'utils/theme/themes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        AppConfig(
          designScreenHeight: 821,
          designScreenWidth: 412,
        ).init(context, constraints, orientation);
        return GetMaterialApp(
          title: 'Padma Smart Tech Blog',
          debugShowCheckedModeBanner: false,
          showPerformanceOverlay: false,
          themeMode: ThemeService.theme,
          darkTheme: Themes.dark,
          theme: Themes.light,
          home: HomeMainUI(),
        );
      });
    });
  }
}
