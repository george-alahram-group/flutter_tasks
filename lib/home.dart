import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_text.dart';

class MyHomeApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {

  var _questions = [
        'What is your favorite color?',
        'What is your favorite animal?'
      ],
      _questionIndex = 0;

  void _handleBtnPressed(BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(data),
      duration: Duration(milliseconds: 500),
    ));
    setState(() {
      if (_questions.length > _questionIndex+1) {
        _questionIndex += 1;
      }
    });
    print("$_questionIndex : ${_questions.elementAt(_questionIndex)}");
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomText(
            text:  _questions.elementAt(_questionIndex),
          ),
          Container(
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CupertinoButton(
                  child: Text('Answer 1'),
                  onPressed: () => {_handleBtnPressed(context, "Answer 1 Called")},
                ),
                CupertinoButton(
                  child: Text('Answer 2'),
                  onPressed: () => {_handleBtnPressed(context, "Answer 2 Called")},
                ),
                CupertinoButton(
                  child: Text('Answer 3'),
                  onPressed: () => {_handleBtnPressed(context, "Answer 3 Called")},
                ),
                CupertinoButton(
                  child: Text('Reset'),
                  onPressed: () => {
                    setState((){
                      _questionIndex = 0;
                    })
                  },
                ),
              ],
            ),
          )
        ],
      );

}
