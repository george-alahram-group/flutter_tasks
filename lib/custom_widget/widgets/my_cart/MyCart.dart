import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/custom_widget/widgets/my_cart/MyCartItem.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../../MessageCard.dart';
import 'MyCartDetailsSammary.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
    padding: EdgeInsets.only(top: 35),
    children: [
      for(int i = 0 ; i < 10 ; i ++) MyCartItem(),
      MyCartDetailsSummary(),
      Image(
        image: AssetImage('assets/images/services.png'),
        alignment: Alignment.center,height: 65,width: 65,),
      Container(margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MyColors().primaryColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            // TODO : Radio button here
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Image(
                image: AssetImage('assets/images/services.png'),
                alignment: Alignment.center,height: 20,width: 20,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                "SERVICES",
                style: TextStyle(
                    color: MyColors().textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Text(
              "50 SAR",
              style: TextStyle(
                  color: MyColors().textColor,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    ],
  );
}