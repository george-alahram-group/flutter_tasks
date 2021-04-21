import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/constants.dart';

import '../../CustomRoundedSmallCard.dart';

class SecondContainer extends StatelessWidget {
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
            children: [
              Padding(
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
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors().textColor),
                      padding: EdgeInsets.all(15),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomRoundedSmallCard(),
                  CustomRoundedSmallCard(),
                  CustomRoundedSmallCard(),
                  CustomRoundedSmallCard(),
                  CustomRoundedSmallCard(),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Text(
            "Cylinder head 2012",
            style:
            TextStyle(color: MyColors().primaryColor, fontSize: 18),
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
