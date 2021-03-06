import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class CustomText extends StatelessWidget {
  final String data;

  CustomText(this.data);

  @override
  Widget build(BuildContext context) => Flexible(
    flex: 1,
    child: Text(
      data,
      style: TextStyle(
          color: MyColors().textColor,
          fontSize: 15,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
