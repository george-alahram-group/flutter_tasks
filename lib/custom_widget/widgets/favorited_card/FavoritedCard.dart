import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ForthConatiner.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/SecondContainer.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ThirdContainer.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'TopContainer.dart';

class FavoritedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Favorited Card"),
        backgroundColor: MyColors().primaryColor,
      ),
      backgroundColor: MyColors().background,
      body: Container(
          color: MyColors().background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopContainer(),
              SecondContainer(),
              ThirdContainer(),
              ForthContainer(),
            ],
          )));
}
