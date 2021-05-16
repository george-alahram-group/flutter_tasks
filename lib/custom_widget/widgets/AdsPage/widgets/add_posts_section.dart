import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/AddPost/add_post_page.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../CustomerServicesPage.dart';

class AddPostsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Post"),
        backgroundColor: MyColors().primaryColor,
      ),
      backgroundColor: MyColors().background,
      body: Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(color: MyColors().cardBackground),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: ProfilePicture(),
            ),
            ButtonAddPost(),
          ],
        ),
      ),
    );
  }
}

class ButtonAddPost extends StatefulWidget {
  const ButtonAddPost({Key key}) : super(key: key);

  @override
  _ButtonAddPostState createState() => _ButtonAddPostState();
}

class _ButtonAddPostState extends State<ButtonAddPost> {
  bool isTaped = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapUp: (details) {setState(() {isTaped = false;});},
        onTapDown: (details) {setState(() {isTaped = true;});},
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPostPage(userName: "George Nady",)),
          )
        },
        child: Container(
          margin: EdgeInsets.only(left: 15),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(
                  color: (isTaped)
                      ? MyColors().textColor
                      : MyColors().textBackground),
              borderRadius: BorderRadius.circular(100)),
          child: Text(
            "What's on your mind?",
            style: TextStyle(color: MyColors().textColor),
          ),
        ),
      ),
    );
  }
}
