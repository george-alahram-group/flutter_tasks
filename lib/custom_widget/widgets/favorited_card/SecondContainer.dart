import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../../CustomRoundedSmallCard.dart';

class SecondContainer extends StatelessWidget {
  final spacer = Container(height: 5);

  @override
  Widget build(BuildContext context) => Container(
        color: MyColors().cardBackground,
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3.0, vertical: 3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "FROM TODAY TO 23 JUN",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: MyColors().textColor),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: EdgeInsets.all(0.0),
                            clipBehavior: Clip.antiAlias,
                            borderOnForeground: true,
                            color: MyColors().primaryColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  "https://picsum.photos/500/500/?random",
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 0.0),
                                  child: Text(
                                    "PRODUCT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: MyColors().textColor,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "2500LE",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              )),
                        ),
                        spacer,
                        CustomRoundedSmallCard(),
                        spacer,
                        CustomRoundedSmallCard(),
                        spacer,
                        CustomRoundedSmallCard(),
                        spacer,
                        CustomRoundedSmallCard(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Text(
                "Cylinder head 2012",
                style: TextStyle(color: MyColors().primaryColor, fontSize: 18),
              ),
            ),
            Text(
              "A few resources to get you started if this is your first Flutter project",
              style: TextStyle(color: MyColors().textColor, fontSize: 14),
            )
          ],
        ),
      );
}
