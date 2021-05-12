import 'package:flutter/cupertino.dart';

class ScreenShootData {

  String title;
  String image;
  String description;
  bool isExpanded;

  ScreenShootData({
    @required this.title,
    @required this.image,
    this.description,
    this.isExpanded,
  });
}
