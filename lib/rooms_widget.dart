import 'package:flutter/material.dart';
import 'package:imkit/imkit_sdk.dart';
import 'package:imkit/widgets/rooms/im_rooms_view.dart';

class RoomsWidget extends StatelessWidget {
  const RoomsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('聊天室')),
      body: const IMRoomsView(),
    );
  }
}
