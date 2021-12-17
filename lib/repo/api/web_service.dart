import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'network_config.dart';
import '../../my_env.dart';

@lazySingleton
class WebService {
  NetworkConfig _config;

  WebService(this._config);

  Dio? _dio;

  Dio createWebService() {
    if (_dio == null) {
      var request = BaseOptions(
        baseUrl: _config.getBaseUrl(),
      );
      _dio = Dio(request);

      if (!MyEnvironment.isProduction) {
        _dio!.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ));
      }
      // _dio.transformer = FlutterTransformer();
    }

    return _dio!;
  }
}
