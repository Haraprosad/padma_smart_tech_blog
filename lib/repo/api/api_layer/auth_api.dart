import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../api/web_service.dart';

@lazySingleton
class AuthApi {
  late Dio _dio;

  AuthApi(WebService service) {
    _dio = service.createWebService();
  }

  Future<Response> postLogin(String email, String password) async {
    FormData formData = new FormData.fromMap({
      "userEmail": email,
      "userPassword": password,
    });

    var response = await _dio.post(
      "RestUser/login",
      data: formData,
    );

    return response;
  }
}
