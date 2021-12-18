import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:padma_smart_tech_blog/repo/api/layers/home_page_layer.dart';
import 'package:padma_smart_tech_blog/repo/api/models/api_response.dart';
import 'package:padma_smart_tech_blog/repo/api/models/data_model.dart';
import 'package:padma_smart_tech_blog/repo/api/models/home_model.dart';
import 'package:padma_smart_tech_blog/repo/api/network_config.dart';
import 'package:padma_smart_tech_blog/ui/shared/snackbar_helper.dart';

import 'helper/controller_helper.dart';
import 'helper/data_status.dart';
@lazySingleton
class CreateBlogController extends GetxController {
  HomePageLayer _homePageLayer;

  CreateBlogController(this._homePageLayer);

  late TextEditingController titleController;
  late TextEditingController descriptionController;

  @override
  void onInit() {
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    super.onInit();
  }

  HomeModel _cache = HomeModel(data: []);

  var dataStatus = HomeModel(data: []).obs;

  void requestForCreatingBlogList() async {
    if (await NetworkConfig.checkInternet()) {
      SnackBarHelper.showError("No internet available");
      return;
    }

    SnackBarHelper.showLoading(
      "Loading...",
    );

    _homePageLayer
        .createBlogPost(titleController.text.trim(), descriptionController.text.trim())
        .then((value) {
      SnackBarHelper.showSuccess("Blog Created Successfully");
      dataStatus(value);
    }).catchError((e, s) {
      Fimber.e("try catch error", ex: e, stacktrace: s);
      analysisError(e);
    });
  }


}
