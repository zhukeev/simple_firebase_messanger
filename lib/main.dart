import 'package:flutter/material.dart';
import 'package:simple_firebase_messanger/pages/ConversationPageList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Messanger',
        theme: ThemeData(
          fontFamily: 'Manrope',
          primarySwatch: Colors.amber,
        ),
        home: ConversationPageList() /* MyHomePage(title: 'Messanger'),*/
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConversationPageList(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ConversationPageList()));
      }),
    );
  }
}
