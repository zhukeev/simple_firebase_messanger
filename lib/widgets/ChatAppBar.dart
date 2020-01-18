import 'package:flutter/material.dart';
import 'package:simple_firebase_messanger/config/Assets.dart';
import 'package:simple_firebase_messanger/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;

  @override
  Widget build(BuildContext context) {
    var textHeading =
        TextStyle(color: Palette.primaryTextColorLight, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryTextColorLight);

    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
        child: Container(
          color: Palette.primaryColor,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 7,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          height: 70 - (width * .06),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: Icon(
                                    Icons.attach_file,
                                    color: Palette.secondaryColor,
                                  ))),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Zhukeev Argen',
                                        style: textHeading,
                                      ),
                                      Text(
                                        '@zhukeev',
                                        style: textStyle,
                                      ),
                                    ],
                                  ))),
                            ],
                          )),
                      Container(
                          height: 23,
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Photos', style: textStyle),
                              VerticalDivider(
                                  width: 30, color: Palette.primaryColor),
                              Text('Video', style: textStyle),
                              VerticalDivider(
                                  width: 30, color: Palette.primaryColor),
                              Text('Files', style: textStyle),
                            ],
                          )),
                    ],
                  ))),
              Expanded(
                  child: Container(
                child: Center(
                  child: CircleAvatar(
                    radius: (80 - (width * .06)) / 2,
                    backgroundImage: Image.asset(Assets.user).image,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
