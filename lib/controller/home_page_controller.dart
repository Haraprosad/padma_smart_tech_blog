import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:padma_smart_tech_blog/repo/api/layers/home_page_layer.dart';
import 'package:padma_smart_tech_blog/repo/api/models/data_model.dart';
import 'package:padma_smart_tech_blog/repo/api/models/home_model.dart';
import 'package:padma_smart_tech_blog/repo/api/network_config.dart';
import 'package:padma_smart_tech_blog/ui/shared/snackbar_helper.dart';

import 'helper/controller_helper.dart';
import 'helper/data_status.dart';
@lazySingleton
class HomePageController extends GetxController {
  HomePageLayer _homePageLayer;

  HomePageController(this._homePageLayer);
  
  HomeModel _cache = HomeModel(data: []);

  var dataStatus = HomeModel(data: []).obs;

  @override
  void onInit() {
    super.onInit();
  }

  void requestForBlogList() async {
    if (await NetworkConfig.checkInternet()) {
      SnackBarHelper.showError("No internet available");
      return;
    }

    SnackBarHelper.showLoading(
      "Logging...",
    );

    _homePageLayer
        .requestForHomeData()
        .then((value) {
      dataStatus(value);
    }).catchError((e, s) {
      Fimber.e("Login try catch error", ex: e, stacktrace: s);
    });
  }
}
