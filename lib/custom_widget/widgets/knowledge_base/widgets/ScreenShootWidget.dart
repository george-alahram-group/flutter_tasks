import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class ScreenShootBody extends StatelessWidget {

  final String image;
  final String text;
  final String title;
  final List<String> description;

  ScreenShootBody({this.image,this.text,this.title,this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors().textColor.withAlpha(75), width: 1),
        color: MyColors().cardBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            image,
            alignment: Alignment.center,
          ),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < description.length; i++)
                    _CustomText(text: description[i])
                ],
              )),
        ],
      ),
    );
  }

}

class _CustomText extends StatelessWidget {
  final String text;

  _CustomText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: MyColors().textColor,
      ),
      textAlign: TextAlign.start,
    );
  }
}

