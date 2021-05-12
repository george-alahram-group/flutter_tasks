import 'package:flutter/cupertino.dart';

class CustomSpacer extends StatelessWidget {

  final double height;

  CustomSpacer({this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
    );
  }
}
