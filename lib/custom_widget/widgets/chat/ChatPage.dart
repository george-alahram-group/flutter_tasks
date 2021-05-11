import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'chat_widget/ChatHeader.dart';
import 'chat_widget/ChatMessage.dart';
import 'chat_widget/MessageCard.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
          backgroundColor: MyColors().primaryColor,
        ),
        backgroundColor: MyColors().background,
        body: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              ChatHeader(),
              MessageCard(),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: ListView(
                  children: [
                    for (int i = 0; i < 35; i++) ChatMessage(),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
