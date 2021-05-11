import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ServicesPost extends StatelessWidget {
  final List<String> list1 = [
    "https://picsum.photos/500/500/?random",
  ];
  final List<String> list2 = [
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
  ];
  final List<String> list3 = [
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
  ];
  final List<String> list4 = [
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
    "https://picsum.photos/500/500/?random",
  ];

  /*String placeHolderImage (String txt) {
    String placeHolder = "https://picsum.photos/500/500/?random";
    if(txt == null) return placeHolder;
    else return txt;
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          PostImage(
            list: list2,
          ),
          PostDescription(),
          PostFooter(),
        ],
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  final List<String> list;

  PostImage({@required this.list});

  List generateFullRangeList(List list) {
    var size = list.length;
    String placeHolder = "https://picsum.photos/500/500/?random";
    List<String> newList;
    if (size <= 5) {
      for (int i = 0; i < 5 - size; i++) {
        for (int x = 0; x < size; x++) {
          newList[x] = list[x];
        }
        newList[i] = placeHolder;
      }
    } else {
      newList = list;
    }
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x50333333)),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          (list.length > 1)
              ? MultiplePhotosHolder(
            imagesList: generateFullRangeList(list),
          )
              : SinglePhotosHolder(imageUrl: list[0]),
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
      ),
    );
  }
}

/* -----------------------------  ------------  ----------------------------- */
/* -----------------------------  Image holder  ----------------------------- */
/* -----------------------------  ------------  ----------------------------- */

// MultiplePhotosHolder
class MultiplePhotosHolder extends StatelessWidget {
  final List<String> imagesList;

  MultiplePhotosHolder({@required this.imagesList});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Container(
        height: media.height / 4,
        width: media.width - 15,
        child: Row(
          children: [
            Column(
              children: [
                CustomImage(imagesList[0]),
                CustomImage(imagesList[1]),
              ],
            ),
            Column(
              children: [
                CustomImage(imagesList[2]),
                CustomImage(imagesList[3]),
                CustomImage(imagesList[4]),
              ],
            )
          ],
        ));
  }
}

// SinglePhotosHolder
class SinglePhotosHolder extends StatelessWidget {
  final String imageUrl;

  SinglePhotosHolder({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Container(
        height: media.height / 4,
        width: media.width - 15,
        child: CustomImage(imageUrl));
  }
}

class CustomImage extends StatelessWidget {
  final String imageUrl;

  CustomImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

/* ---------------------------------  ----  --------------------------------- */
/* ---------------------------------  Post  --------------------------------- */
/* ---------------------------------  ----  --------------------------------- */
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
  final bool isFavorited = false;
  final int favoritesCount = 0;
  final int commentsCount = 0;
  final double rate = 0.0;

  final TextStyle textStyle = TextStyle(color: MyColors().textColor);

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
