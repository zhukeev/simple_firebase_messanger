import 'package:flutter/material.dart';
import 'package:simple_firebase_messanger/widgets/ChatListWidget.dart';
import 'package:simple_firebase_messanger/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
