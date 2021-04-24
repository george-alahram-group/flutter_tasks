import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class CustomIconButton extends StatelessWidget {

  final Icon icon;
  final VoidCallback function;

  CustomIconButton({this.icon, this.function});

  @override
  Widget build(BuildContext context) =>

      Container(
        padding: EdgeInsets.all(3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: MyColors().primaryColor,
            borderRadius: BorderRadius.circular(50),
            ),
        child: SizedBox(
            height: 18.0,
            width: 18.0,
            child: IconButton(
              icon: icon,
              iconSize: 18,
              padding: EdgeInsets.all(0.0),
              color: MyColors().textColor,
              onPressed: function,
            ))
      );



}

/*


);*/
