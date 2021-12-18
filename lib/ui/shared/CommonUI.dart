import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/ext/num_x.dart';
import 'package:padma_smart_tech_blog/gen/fonts.gen.dart';

class CommonUI {
  static Widget showLoading() {
    return Container(
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
  }

  static Widget showOffline() {
    return Container(
      width: Get.width,
      height: Get.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Sorry you are now in offline",
            style: TextStyle(
              color: Colors.black,
              fontFamily: FontFamily.sfProDisplay,
              fontSize: 28.0.fontSize,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Icon(Icons.no_food),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Check your internet Connection",
            style: TextStyle(
              color: Colors.black,
              fontFamily: FontFamily.dancing,
              fontSize: 19.0.fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          MaterialButton(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 10.h,
              bottom: 10.h,
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
           //88888888888888888888
            },
            child: Text(
              "Try Again",
              style: TextStyle(
                fontFamily: FontFamily.dancing,
                fontSize: 16.fontSize,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget showFailed(String text) {
    return Container(
      height: Get.height,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.red,
          fontFamily: FontFamily.dancing,
          fontSize: 18.0.fontSize,
        ),
      ),
    );
  }
}
