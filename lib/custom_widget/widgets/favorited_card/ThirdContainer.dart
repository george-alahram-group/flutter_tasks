import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/constants.dart';

import '../../Divider.dart';
import '../../custom_text.dart';
import '../../custom_text_2.dart';

class ThirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors().primaryColor,
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
        child: IntrinsicHeight(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomText('VIEWS:'), CustomText2('0')],
              ),
            ),
            CustomDivider(height: 60),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomText('PHONE:'), CustomText2('0')],
              ),
            ),
            CustomDivider(height: 60),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomText('FAVORITED:'), CustomText2('0')],
              ),
            ),
            CustomDivider(height: 60),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomText('CHATS:'), CustomText2('0')],
              ),
            ),
          ],
        )),
      );
}
