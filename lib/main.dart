import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_imkit_demo/app.dart';
import 'package:imkit/imkit_sdk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await IMKit.init(IMStateBuilder()
    ..setClientKey("fangho_imkit_0412_2018_001_clientkey")
    ..setChatServerURL("https://imkit-dev.funtek.io")
    ..setTranslationApiKey("AIzaSyDwdYjqeA5YBiTZD4X8LUmvjl2ZEacs4cY")
    ..setCloudTranslateAPIUrl("https://translation.googleapis.com")
    ..setSDKPackageName("imkit"));

  await IMKit.login(uid: "ho2");
  // IMKit.instance.connect();

  runZonedGuarded(() {
    runApp(const App());
  }, (error, stackTrace) {});
}
