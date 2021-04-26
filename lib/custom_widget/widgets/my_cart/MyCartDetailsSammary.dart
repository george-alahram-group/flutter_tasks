import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class MyCartDetailsSummary extends StatelessWidget {
  final padding = EdgeInsets.all(15);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(15),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: MyColors().textColor,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Container(
              padding: padding,
              child: Column(
                children: [
                  DetailsRow(
                    leftText: "NUMBER OF PRODUCT",
                    rightText: "5",
                  ),
                  DetailsRow(
                    leftText: "TOTAL RECUST",
                    rightText: "50 SAR",
                  ),
                  DetailsRow(
                    leftText: "DISCOUNT",
                    rightText: "20 %",
                  ),
                  DetailsRow(
                    leftText: "SHIPPING",
                    rightText: "5 SAR",
                  ),
                  DetailsRow(
                    leftText: "SERVICE",
                    rightText: "10 SAR",
                  ),
                ],
              ),
            ),
            Container(
              padding: padding,
              color: MyColors().primaryColor,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "TOTAL",
                      style: TextStyle(
                          color: MyColors().textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Text(
                    "700 SAR",
                    style: TextStyle(
                        color: MyColors().textColor,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class DetailsRow extends StatelessWidget {

  final String leftText;
  final String rightText;

  DetailsRow({@required this.leftText, @required this.rightText});

  TextStyle textStyle(bool isBlack) {
    return TextStyle(
        color: (isBlack) ? MyColors().black : MyColors().primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 16);
  }


  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
    child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                leftText,
                style: textStyle(true),
              ),
            ),
            Flexible(
              child: Text(
                rightText,
                style: textStyle(false),
              ),
            ),
          ],
        ),
  );
}
