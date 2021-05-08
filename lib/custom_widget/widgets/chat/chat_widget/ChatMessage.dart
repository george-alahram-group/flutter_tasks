import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class ChatMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xBFFFFFFF), shape: BoxShape.circle),
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
                color: MyColors().textColor, shape: BoxShape.circle),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              "https://picsum.photos/500/500/?random",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: MyColors().textColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
          ),
          child: Text(
            "Message",
            style: TextStyle(
              color: MyColors().black
            ),
          ),
        )
      ],
    ),
  );
}
