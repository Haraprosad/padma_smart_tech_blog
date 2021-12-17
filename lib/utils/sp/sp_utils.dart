/*** To store extra light key-value in memory,
 *  we can use GetStorage. In whole app we can access
 *  this data using following methods***/

import 'package:get_storage/get_storage.dart';
import 'package:padma_smart_tech_blog/utils/sp/sp_constants.dart';



class SpUtils {
  //login and singup control
  static bool checkIsLogin() {
    var box = GetStorage();
    var status = box.read<bool>(SpConstants.LOGGED_IN) ?? false;
    return status;
  }

  static void setLoginStatus(bool status) {
    var box = GetStorage();
    box.write(SpConstants.LOGGED_IN, status);
  }

  static String getLangCode() {
    var box = GetStorage();
    return box.read<String>(SpConstants.LANG_CODE) ?? "en";
  }

  static void setLangCode(String code) {
    var box = GetStorage();
    box.write(SpConstants.LANG_CODE, code);
  }
}
