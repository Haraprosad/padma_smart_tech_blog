import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/controller/helper/data_status.dart';
import 'package:padma_smart_tech_blog/controller/home_page_controller.dart';
import 'package:padma_smart_tech_blog/di/config_inject.dart';
import 'package:padma_smart_tech_blog/repo/api/models/dummy_blog_post.dart';
import 'package:padma_smart_tech_blog/repo/api/models/home_model.dart';
import 'package:padma_smart_tech_blog/ui/shared/CommonUI.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/responsive.dart';

import 'components/blogpost_card.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';
class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final HomePageController _homeController =
  Get.put(getIt<HomePageController>());
  @override
  Widget build(BuildContext context) {
    return GetX<HomePageController>(
      init: _homeController,
      initState: (_) {
        _homeController.requestForBlogList();
      },
      builder: (s) {
        var data = s.dataStatus.value;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children:

                List.generate(
                  blogPosts.length,
                      (index) => BlogPostCard(blog: data.data[index]),
                )
                ,
              ),
            ),
          ],
        );
      },
    );
  }
}


//**************************************


//*********************************
