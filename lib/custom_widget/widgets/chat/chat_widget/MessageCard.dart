import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import '../../../MessageCard.dart';

class MessageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 15),
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.loose,
          children: [
            CustomPaint(
              size: Size(media, (media / 1.5).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: MessageCardShape(), //3
            ),
            Container(
              height: (media / 1.5) - 22,
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                "https://picsum.photos/500/500/?random",
                                width: (media / 2) - 10,
                                height: 155,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                  color: MyColors().primaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      topLeft: Radius.circular(20))),
                              child: Text(
                                "-35%",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyColors().textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: MyColors().textColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                decoration:
                                    BoxDecoration(color: MyColors().primaryColor),
                                child: Text(
                                  "SELLER",
                                  style: TextStyle(
                                      fontSize: 10, color: MyColors().textColor),
                                  maxLines: 1,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "MANSOUR AUTO",
                                  overflow: TextOverflow.ellipsis,
                                  textWidthBasis: TextWidthBasis.parent,
                                  style: TextStyle(fontSize: 10),
                                  maxLines: 1,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 15,
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Cylinder head 2012",
                            style: TextStyle(
                              color: MyColors().primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Google free service instantly trasnlate worlds pharos and web pages between english",
                            style: TextStyle(
                              color: MyColors().textColor,
                              fontSize: 14,
                            ),
                            maxLines: 5,
                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              color: MyColors().textColor,
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "2500 LE",
                                style: TextStyle(
                                    color: Color.fromARGB(120, 0, 0, 0),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12),
                              ),
                              Text(
                                "2500 LE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: MyColors().textColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: MyColors().primaryColor),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: MyColors().textColor,
                                    size: 25,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "2500 LE",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
