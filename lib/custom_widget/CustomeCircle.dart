import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/constants.dart';

class CustomeCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: MyColors().primaryColor,
    ),
    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.017),
    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
  );
}
