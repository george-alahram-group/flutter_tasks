import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/my_cart/MyCartItem.dart';

import 'MyCartDetailsSammary.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
    padding: EdgeInsets.only(top: 35),
    children: [
      for(int i = 0 ; i < 10 ; i ++) MyCartItem(),
      MyCartDetailsSummary()
    ],
  );
}