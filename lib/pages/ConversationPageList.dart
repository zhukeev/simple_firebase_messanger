import 'package:flutter/material.dart';
import 'package:simple_firebase_messanger/pages/ConversationPage.dart';

class  ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageListState createState() => _ConversationPageListState();
}

class _ConversationPageListState extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}
