import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/constants.dart';

class CustomText extends StatelessWidget {
  final String data;

  CustomText(this.data);

  @override
  Widget build(BuildContext context) => Flexible(
    flex: 1,
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        data,
        style: TextStyle(
            color: MyColors().textColor,
            fontSize: 15
        ),
      ),
    ),
  );
}
