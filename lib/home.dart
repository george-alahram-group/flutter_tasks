import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/chat/ChatPage.dart';
import 'package:flutter_app/custom_widget/widgets/customer_services/CustomerServicesPage.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/FavoritedCard.dart';
import 'package:flutter_app/custom_widget/widgets/my_cart/MyCart.dart';
import 'package:flutter_app/custom_widget/widgets/my_vehicles/MyVehicles.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'custom_widget/widgets/knowledge_base/KnowledgeBasePage.dart';

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(text: "Chat Page", route: ChatPage(),),
            CustomButton(text: "Favorite Card", route: FavoritedCard()),
            CustomButton(text: "My Cart", route: MyCart()),
            CustomButton(text: "MyVehicles", route: MyVehicles()),
            CustomButton(text: "Profile Page", route: CustomerServicesPage(
              userName: "George Nady",
              location: "Cairo Egypt",
            )),
            CustomButton(text: "Knowledge Base Page", route: KnowledgeBasePage()),
          ],
        ),
      );
}

class CustomButton extends StatelessWidget {
  final String text;
  final Widget route;

  final TextStyle style = TextStyle(
    color: Colors.white,
    fontSize: 14,
    letterSpacing: 1.2
  );

  CustomButton({@required this.text, @required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyColors().primaryColor)),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
