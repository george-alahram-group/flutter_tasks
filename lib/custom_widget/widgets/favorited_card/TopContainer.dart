import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../../Divider.dart';
import '../../custom_text.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors().textBackground,
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
        child: Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: CustomText('EDIT Ad'),
              ),
              CustomDivider(height:40),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: CustomText('DELETE Ad'),
              ),
              CustomDivider(height:40),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: CustomText('SHARE Ad'),
              ),
            ],
          ),
        ),
      );
}
