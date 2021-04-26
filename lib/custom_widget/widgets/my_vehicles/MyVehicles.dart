import 'package:flutter/cupertino.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ForthConatiner.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/TopContainer.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'MyVehiclesSecondContainer.dart';

class MyVehicles extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      color: MyColors().background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopContainer(),
          MyVehiclesSecondContainer(),
          ForthContainer(),
        ],
      ));
}
