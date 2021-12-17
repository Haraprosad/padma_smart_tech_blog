import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/ui/home_ui.dart';
import 'package:padma_smart_tech_blog/utils/responsive_size/responsive_view.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../gen/assets.gen.dart';


class SplashScreenUI extends ResponsiveStateless {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashScreenView(
          navigateRoute: HomeUI(),
          duration: 10000,
          imageSize: 300,
          imageSrc: Assets.img.splashIcon.assetName,
          text: "Welcome to our Blog App",
          textType: TextType.TyperAnimatedText,
          textStyle: TextStyle(
            fontSize: 20.0,
            color: Colors.black
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
