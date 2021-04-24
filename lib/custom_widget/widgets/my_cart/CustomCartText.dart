import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class CustomCartText extends StatelessWidget {
  final String data;
  final Color color;
  final bool borderEnable;

  CustomCartText({this.data, this.color, this.borderEnable});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(vertical: 7,horizontal: 5),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        border: (borderEnable)
            ? Border.all(
          color: MyColors().textColor,
          width: 1,
          style: BorderStyle.solid,
        )
            : null ),
    child: Text(
      data,
      style: TextStyle(color: MyColors().textColor,fontSize: 12),
    ),
  );
}
