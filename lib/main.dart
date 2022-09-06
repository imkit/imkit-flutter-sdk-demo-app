import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_imkit_demo/app.dart';
import 'package:imkit/imkit_sdk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await IMKit.init(IMStateBuilder()
        ..setClientKey("fangho_imkit_0412_2018_001_clientkey")
        ..setChatServerURL("https://chat.fangho.com")
        ..setTranslationApiKey("AIzaSyANXUoLgkHrCax6dct18QledIBA550lcuk")
        ..setSDKPackageName("imkit")
      // set customize sticker if need
      // ..setStickers([
      //   Assets.stickers.sticker1.path,
      //   Assets.stickers.sticker2.path,
      //   Assets.stickers.sticker3.path,
      //   Assets.stickers.sticker4.path,
      //   Assets.stickers.sticker5.path,
      //   Assets.stickers.sticker6.path,
      //   Assets.stickers.sticker7.path,
      //   Assets.stickers.sticker8.path,
      //   Assets.stickers.sticker9.path,
      //   Assets.stickers.sticker10.path
      // ])
      );

  await IMKit.login(uid: "ho2");
  // IMKit.instance.connect();

  runZonedGuarded(() {
    runApp(const App());
  }, (error, stackTrace) {});
}
