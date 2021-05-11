import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ForthConatiner.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/TopContainer.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'MyVehiclesSecondContainer.dart';

class MyVehicles extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
  appBar: AppBar(
  title: Text("My Vehicle"),
  backgroundColor: MyColors().primaryColor,
  ),
  backgroundColor: MyColors().background,
  body: Container(
      color: MyColors().background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopContainer(),
          MyVehiclesSecondContainer(),
          ForthContainer(),
        ],
      )));
}
