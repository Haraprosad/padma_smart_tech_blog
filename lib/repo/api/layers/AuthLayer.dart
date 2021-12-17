import 'package:injectable/injectable.dart';

import '../api_layer/auth_api.dart';
import '../models/api_response.dart';

@lazySingleton
class AuthLayer {
  AuthApi _authApi;

  AuthLayer(this._authApi);

  Future<ApiResponse> requestLogin(
      String email, String password, String userType) async {
    //http request
    var response = await _authApi.postLogin(
      email,
      password,
    );

    // return compute(parseApiResponse, response.data.toString());
    return ApiResponse.fromJson(response.data);
  }
}
