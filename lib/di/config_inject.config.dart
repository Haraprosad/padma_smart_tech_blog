// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../controller/log_in_controller.dart' as _i7;
import '../repo/api/api_layer/auth_api.dart' as _i5;
import '../repo/api/layers/AuthLayer.dart' as _i6;
import '../repo/api/network_config.dart' as _i3;
import '../repo/api/web_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.NetworkConfig>(() => _i3.NetworkConfig());
  gh.lazySingleton<_i4.WebService>(
      () => _i4.WebService(get<_i3.NetworkConfig>()));
  gh.lazySingleton<_i5.AuthApi>(() => _i5.AuthApi(get<_i4.WebService>()));
  gh.lazySingleton<_i6.AuthLayer>(() => _i6.AuthLayer(get<_i5.AuthApi>()));
  gh.lazySingleton<_i7.LoginController>(
      () => _i7.LoginController(get<_i6.AuthLayer>()));
  return get;
}
