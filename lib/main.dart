import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/utiles/MyColors.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App"),
            backgroundColor: MyColors().primaryColor,
          ),
          backgroundColor: MyColors().background,
          body: MyHomeApp(),
        ),
      );
}
