import 'package:flutter/material.dart';
import 'package:simple_firebase_messanger/widgets/ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: 20,
            reverse: true,
            controller: listScrollController,
            itemBuilder: (context, index) => ChatItemWidget(index)));
  }
}
