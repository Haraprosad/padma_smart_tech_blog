import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:get/get.dart';
import '../../my_env.dart';

@lazySingleton
class NetworkConfig {
  static final String errorMessage = "unexpected_error".tr;
  static final String noInternetMessage = "no_internet".tr;
  String getBaseUrl() {
    if (MyEnvironment.isProduction) {
      //todo: when app will go for production then the final production url
      //todo: -will be needed.
      return "<prod_url>";
    } else {
      //if any test server belonged
      return "https://young-island-48231.herokuapp.com/api/v1/exam";
    }
  }

  static Future<bool> checkInternet() async {
    var result = await Connectivity().checkConnectivity();
    return result == ConnectivityResult.none;
  }

  // chnage with app
  // just as an example
  static ApiResponseType getApiStatus(int statusCode, String message) {
    switch (statusCode) {
      case 200:
        {
          return ApiResponseType.SUCCESS;
        }
        break;
      case 400:
        {
          if (message != 'Success' || message != null) {
            return ApiResponseType.ERROR;
          } else {
            return ApiResponseType.BAD_REQUEST;
          }
        }
        break;
      case 401:
        {
          return ApiResponseType.ERROR;
        }
        break;
      default:
        {
          return ApiResponseType.BAD_REQUEST;
        }
    }
  }
  //todo: for image retrievation following method will be helpful
  //this methods will complete the image url
  static String getImageUrl(String image) {
    return "<imageurl>" + image;
  }
}

enum ApiResponseType { SUCCESS, ERROR, BAD_REQUEST, INFO_REQUIRED }
