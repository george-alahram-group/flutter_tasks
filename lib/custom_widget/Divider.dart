import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {

  final double height;

  CustomDivider({this.height});

  @override
  Widget build(BuildContext context) =>  Container(height: height,color: Colors.white,width: 1,);
}
