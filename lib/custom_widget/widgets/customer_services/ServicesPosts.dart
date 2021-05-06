import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ServicesPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [PostImage(), PostDescription(), PostFooter()],
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Image.network(
          "https://picsum.photos/500/500/?random",
          height: media.height / 4,
          width: media.width - 15,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color(0x80000000)),
          child: Text(
            "5 Mar 2020",
            style: TextStyle(color: MyColors().textColor),
          ),
        )
      ],
    );
  }
}

class PostDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: MyColors().primaryColor),
      child: Text(
        "El Mutawakel for Cars Electrical El Mutawakel for Cars Electrical",
        style: TextStyle(color: MyColors().textColor),
      ),
    );
  }
}

class PostFooter extends StatelessWidget {

  var isFavorited = false;
  var favoritesCount = 0;
  var commentsCount = 0;
  var rate = 0.0;

  var textStyle = TextStyle(color: MyColors().textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: MyColors().cardBackground),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: (isFavorited)
                    ? MyColors().primaryColor
                    : MyColors().textColor,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  favoritesCount.toString(),
                  style: textStyle,
                ),
              )
            ],
          ),
          Text(
            '$commentsCount Comments',
            style: textStyle,
          ),
          SmoothStarRating(
            rating: rate,
            color: MyColors().primaryColor,
            borderColor: MyColors().primaryColor,
          )
        ],
      ),
    );
  }
}
