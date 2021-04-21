import 'package:flutter/cupertino.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ForthConatiner.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/SecondContainer.dart';
import 'package:flutter_app/custom_widget/widgets/favorited_card/ThirdContainer.dart';
import 'package:flutter_app/utiles/constants.dart';

import 'TopContainer.dart';

class FavoritedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      color: MyColors().background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopContainer(),
          SecondContainer(),
          ThirdContainer(),
          ForthContainer(),
        ],
      ));
}
