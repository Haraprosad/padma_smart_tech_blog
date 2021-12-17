import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/ext/num_x.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';


class SnackBarHelper {

  //*****************Success snackbar ui************************
  static void showSuccess(messageText) {
    if (Get.context == null) return;

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
        backgroundColor:ColorConstants.snackBarBackground,
        content: Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
              size: 28.0.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Flexible(
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0.fontSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //*****************information showing snackbar ui**************
  static void showInfo(messageText) {
    if (Get.context == null) return;

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
        backgroundColor:ColorConstants.snackBarBackground,
        content: Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
              size: 28.0.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Flexible(
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0.fontSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //*****************Error snackbar ui************************
  static void showError(messageText, {int time = 5}) {
    if (Get.context == null) return;

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin:const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
        backgroundColor: ColorConstants.snackBarBackground,
        content: Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
              size: 28.0.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Flexible(
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0.fontSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //*****************Loading snackbar ui************************
  static void showLoading(messageText) {
    if (Get.context == null) return;

    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 2.0),
        backgroundColor: ColorConstants.snackBarBackground,
        content: Column(
          children: [
            Flexible(
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0.fontSize,
                ),
              ),
            ),
            const LinearProgressIndicator()
          ],
        ),
      ),
    );
  }
}
