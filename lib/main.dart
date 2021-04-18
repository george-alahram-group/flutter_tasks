import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            title: Text("My Flutter App"),
            elevation: 10,
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.account_circle),
                tooltip: "Cold",
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ],
          ),
          body: MyHomeApp(),
        ),
      );
}
