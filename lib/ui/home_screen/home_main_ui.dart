import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/controller/create_blog_controller.dart';
import 'package:padma_smart_tech_blog/controller/menu_controller.dart';
import 'package:padma_smart_tech_blog/di/config_inject.dart';
import 'package:padma_smart_tech_blog/ui/create_blog_screen/create_blog_ui.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';

import 'components/header.dart';
import 'components/side_menu_bar.dart';
import 'home_ui.dart';

class HomeMainUI extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstants.clearRed,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: (){
          Get.to(CreateBlogUI());
        },
      ),
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(SizeConstants.kDefaultPadding),
              constraints: BoxConstraints(maxWidth: SizeConstants.kMaxWidth),
              child: SafeArea(child: HomeUI()),
            ),
          ],
        ),
      ),
    );
  }
}
