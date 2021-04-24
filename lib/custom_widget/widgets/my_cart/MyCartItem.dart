import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'CustomCartText.dart';
import 'CustomIconButton.dart';

class MyCartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.fromLTRB(15,0,15,15),
    height: 120,
    decoration: BoxDecoration(
      color: MyColors().cardBackground,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      border: Border.all(
          color: MyColors().textColor, width: 1, style: BorderStyle.solid),
    ),
    child: Flexible(
      fit: FlexFit.tight,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              "https://picsum.photos/500/500/?random",
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      "Cylinder head 2012",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: MyColors().primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCartText(
                                data: "PARTS",
                                color: MyColors().cardBackground,
                                borderEnable: true,
                              ),
                              CustomCartText(
                                data: "2500 LE",
                                color: MyColors().cardBackground,
                                borderEnable: true,
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(),
                        ),
                        Flexible(
                          flex: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CustomIconButton(icon: Icon(Icons.remove_rounded,color: MyColors().textColor,),),
                                  Text("1",style: TextStyle(color: MyColors().textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                                  CustomIconButton(icon: Icon(Icons.add_rounded,color: MyColors().textColor,),),

                                ],
                              ),
                              CustomCartText(
                                data: "MANSOUR PLUS",
                                color: MyColors().primaryColor,
                                borderEnable: false,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
