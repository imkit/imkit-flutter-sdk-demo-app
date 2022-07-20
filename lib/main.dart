import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_imkit_demo/app.dart';
import 'package:imkit/imkit_sdk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await IMKit.instance.init(IMStateBuilder()
    ..setClientKey("fangho_imkit_0412_2018_001_clientkey")
    ..setChatServerURL("https://chat.fangho.com")
    ..setTranslationApiKey("AIzaSyANXUoLgkHrCax6dct18QledIBA550lcuk")
    ..setUid("ho2")
    ..setToken(
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImhvMiIsImV4cCI6MTY4MDIzNjI2NiwiaWF0IjoxNjQ4NzAwMjY2fQ.RNnKq73uj43rzlt69sVkfaA46sPy4YA_9zJJwQRnErU"));

  // IMKit.instance.connect();

  runZonedGuarded(() {
    runApp(const App());
  }, (error, stackTrace) {});
}
