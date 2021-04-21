import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/constants.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => VerticalDivider(
    color: MyColors().textColor,width: 1,thickness: 1,
  );
}
