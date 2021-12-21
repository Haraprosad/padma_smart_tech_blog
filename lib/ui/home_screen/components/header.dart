import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/controller/menu_controller.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/responsive.dart';

import 'web_menu.dart';


class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorConstants.kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: SizeConstants.kMaxWidth),
              padding: EdgeInsets.all(SizeConstants.kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      //SvgPicture.asset("assets/icons/logo.svg"),
                      Image.asset("assets/img/splash_icon.png"),
                      Spacer(),
                      // Socal
                      ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConstants.kDefaultPadding * 1.5,
                            vertical:
                            SizeConstants.kDefaultPadding / 2,
                          ),
                        ),
                        child: Text("Contact Us"),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConstants.kDefaultPadding * 2),
                  Text(
                    "Welcome to Our Blog",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: SizeConstants.kDefaultPadding),
                    child: Text(
                      "WE BUILD THE NEXT GENERATION OF SMART METER SOLUTIONS INTEGRATED WITH IOT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
