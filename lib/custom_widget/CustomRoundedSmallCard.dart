import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/constants.dart';

import 'CustomeCircle.dart';

class CustomRoundedSmallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: MyColors().textColor,
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomeCircle(),
          Text("CARS"),
        ],
      )
    ),
  );
}
