import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/custom_widget/widgets/customer_services/ServicesPosts.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class CustomerServicesPage extends StatelessWidget {
  final String userName;
  final String location;

  CustomerServicesPage({@required this.userName, this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Services Page"),
        backgroundColor: MyColors().primaryColor,
      ),
      backgroundColor: MyColors().background,
      body: Container(
        child: Column(
          children: [
            PageHeader(
              userName: userName,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        color: MyColors().textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: MyColors().textColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          location,
                          style: TextStyle(color: MyColors().textColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: ListView(
                children: [for (int i = 0; i < 3; i++) ServicesPost()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  final String userName;

  PageHeader({@required this.userName});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var profileCoverHeight = media.height / 5;
    var profilePictureHeight = media.width / 4.5;

    return Container(
      height: profileCoverHeight + (profilePictureHeight / 2),
      child: Stack(
        children: [
          Image.network(
            "https://picsum.photos/500/500/?random",
            height: profileCoverHeight,
            width: media.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: profileCoverHeight - (profilePictureHeight / 2)),
            child: Row(
              children: [
                // circle image
                ProfilePicture(),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // user name || profile title
                        Container(
                          decoration:
                              BoxDecoration(color: MyColors().primaryColor),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          child: Text(
                            userName,
                            style: TextStyle(color: MyColors().textColor),
                          ),
                        ),
                        Container(
                          child: Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  CustomSelector(text: "Home",),
                                  CustomSelector(text: "About",),
                                  CustomSelector(text: "Call Us",)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomSelector extends StatefulWidget {

  final String text;

  CustomSelector({@required this.text});

  @override
  CustomSelectorState createState() => CustomSelectorState();
}

class CustomSelectorState extends State<CustomSelector> {

  var isClicked = false;
  var clickedState = Border.all(
    width: 1,
    color: MyColors().primaryColor,
  );
  var notClickedState = Border.all(
    width: 1,
    color: MyColors().textColor,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isClicked) isClicked = false;
          else isClicked = true;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            color: MyColors().textColor,
            border: (isClicked) ? clickedState : notClickedState,
            borderRadius:
            BorderRadius.circular(50)),
        child: Text(
          widget.text,
          style: TextStyle(color: MyColors().black),
        ),
      ),
    );
  }
}


class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: MyColors().textColor,
            style: BorderStyle.solid,
          )),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          "https://picsum.photos/500/500/?random",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
