import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'CustomeCircle.dart';

class CustomRoundedSmallCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: MyColors().textColor,
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      children: [
        CustomeCircle(),
        Flexible(flex: 1,fit: FlexFit.tight,child: Text("CARS",textAlign: TextAlign.center,)),
      ],
    ),
  );
}
