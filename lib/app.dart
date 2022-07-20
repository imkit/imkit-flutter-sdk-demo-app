import 'package:flutter/material.dart';
import 'package:flutter_imkit_demo/rooms_widget.dart';
import 'package:imkit/imkit_sdk.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMKit Demo App',
      localizationsDelegates: IMKit.instance.localizationsDelegates,
      supportedLocales: IMKit.instance.supportedLocales,
      home: const RoomsWidget(),
      navigatorObservers: IMKit.instance.navigatorObservers,
      builder: IMKit.instance.builder,
    );
  }
}
