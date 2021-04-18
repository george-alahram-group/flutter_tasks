import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;

  CustomText({@required this.text});

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: TextAlign.center,
        textWidthBasis: TextWidthBasis.parent,
        style: TextStyle(fontSize: 25),
      );
}
