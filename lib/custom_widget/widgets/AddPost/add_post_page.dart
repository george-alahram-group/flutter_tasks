import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/AdsPage/CustomerServicesPage.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class AddPostPage extends StatelessWidget {
  final String userName;

  AddPostPage({@required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Post Page"),
        backgroundColor: MyColors().primaryColor,
      ),
      backgroundColor: MyColors().background,
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: ProfilePicture(),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        (userName == null) ? "User Name" : userName,
                        style: TextStyle(
                            color: MyColors().textColor, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              CustomInputField()
            ],
          )),
    );
  }
}

class CustomInputField extends StatefulWidget {
  const CustomInputField({Key key}) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: MyColors().primaryColor,
        style: TextStyle(color: MyColors().textColor),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: MyColors().textBackground)),
        maxLines: 15,
      ),
    );
  }
}
