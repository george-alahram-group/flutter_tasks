
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/Divider.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class ForthContainer extends StatelessWidget {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "PROMOTE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: MyColors().black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        CustomDivider(height: 44),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            color: MyColors().textBackgroundLight,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child:Icon(Icons.more_horiz),
          ),
        )
          ],
        ),
      );
}