import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'di/config_inject.dart';
import 'my_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  Fimber.plantTree(DebugTree());
  // inject first
  configureDependencies();

  // init storage
  await GetStorage.init();

  runApp(MyApp());
}
