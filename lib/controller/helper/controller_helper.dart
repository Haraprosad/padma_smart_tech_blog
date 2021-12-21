import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:fimber/fimber.dart';
import 'package:padma_smart_tech_blog/repo/api/network_config.dart';
import 'package:padma_smart_tech_blog/ui/shared/snackbar_helper.dart';

void closeDialog() {
  if (Get.isDialogOpen == true) {
    Get.close(1);
  }
}

Future<void> pop({bool animated = false}) async {
  await SystemChannels.platform
      .invokeMethod<void>('SystemNavigator.pop', animated);
}

