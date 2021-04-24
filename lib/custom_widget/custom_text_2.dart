import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/constants.dart';

class CustomText2 extends StatelessWidget {
  final String data;

  CustomText2(this.data);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Text(
      data,
      style: TextStyle(
          color: MyColors().textColor,
          fontSize: 20
      ),
    ),
  );
}
