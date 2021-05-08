import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class ChatHeader extends StatefulWidget {
  @override
  _ChatHeaderState createState() => _ChatHeaderState();
}

class _ChatHeaderState extends State<ChatHeader> {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color(0xBFFFFFFF), shape: BoxShape.circle),
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                    color: MyColors().textColor, shape: BoxShape.circle),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  "https://picsum.photos/500/500/?random",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "User Name",
                  style: TextStyle(
                      color: MyColors().primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              backgroundColor: MyColors().primaryColor,
              child: Icon(
                  Icons.call,
                color: MyColors().textColor,
              ),
            )
          ],
        ),
      );
}
