import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../../CustomRoundedSmallCard.dart';

class MyVehiclesSecondContainer extends StatelessWidget {

  final spacer = Container(height: 9);

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "FROM TODAY TO 23 JUN",
                      style: TextStyle(
                        color: MyColors().textColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Card(
                          key: Key("productCard"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: EdgeInsets.all(0.0),
                          clipBehavior: Clip.antiAlias,
                          borderOnForeground: true,
                          color: MyColors().primaryColor,
                          child: Column(
                            children: [
                              Image.network(
                                "https://picsum.photos/500/500/?random",
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: 135,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0.0),
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
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          constraints: BoxConstraints(
                            maxHeight: double.infinity,
                            maxWidth: double.infinity,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CustomRoundedSmallCard(),
                              spacer,
                              CustomRoundedSmallCard(),
                              spacer,
                              CustomRoundedSmallCard(),
                              spacer,
                              CustomRoundedSmallCard(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
