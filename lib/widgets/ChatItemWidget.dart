import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_firebase_messanger/config/Palette.dart';

class ChatItemWidget extends StatelessWidget {
  final int index;

  ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a sent message',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Palette.selfMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(right: 10.0),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12.0,
                        fontStyle: FontStyle.normal),
                  ),
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a reveived message',
                    style: TextStyle(color: Palette.otherMessageColor),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Palette.otherMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(left: 10),
                )
              ],
            ),
            Container(
              child: Text(
                DateFormat('dd MMM kk:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(1565888474278),
                ),
                style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal),
              ),
              margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10.0),
      );
    }
  }
}
