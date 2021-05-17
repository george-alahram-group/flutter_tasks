import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';
import 'package:image_picker/image_picker.dart';
import 'Widgets/custom_ink_well.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({Key key}) : super(key: key);

  @override
  _PersonalInformationPageState createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  File imageFile;

  _openGallery(BuildContext context) async {
    File picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    File picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a Choice!"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  CustomInkWell(
                    inkPadding: 10,
                    chilledPadding: 10,
                    child: Text("Gallery"),
                    fun: () {
                      _openGallery(context);
                    },
                  ),
                  CustomInkWell(
                    inkPadding: 10,
                    chilledPadding: 10,
                    child: Text("Camera"),
                    fun: () {
                      _openCamera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
        backgroundColor: MyColors().primaryColor,
      ),
      backgroundColor: MyColors().background,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 20),
                    child: _profileImage(),
                  ),
                  CustomInkWell(
                    child: Icon(
                      Icons.camera_alt,
                      color: MyColors().primaryColor,
                      size: 30,
                    ),
                    inkPadding: 50,
                    chilledPadding: 10,
                    fun: () {
                      print("Camera Icon Taped");
                      // TODO : Open Camera
                      _showChoiceDialog(context);
                    },
                  ),
                ],
              ),
            ),
            _horizontalLine(),
            _customRow(title: "Name", description: "George Nady"), // TODO : Hint* : description is a dummy data
            _horizontalLine(),
            _customRow(title: "Email", description: "george@email.com"), // TODO : Hint* : description is a dummy data
            _horizontalLine(),
            _customRow(title: "Phone", description: "01211422185"), // TODO : Hint* : description is a dummy data
            _horizontalLine(),
            _customRow(title: "Country", description: "Cairo"), // TODO : Hint* : description is a dummy data
            _horizontalLine(),
          ],
        ),
      ),
    );
  }

  Widget _profileImage() {

    _decideImageView() {
      if (imageFile == null) {
        return Image.network(
          "https://picsum.photos/500/500/?random",
          fit: BoxFit.contain,
        ); // TODO : Change it to the place holder image
      } else {
        return Image.file(
          imageFile,
          fit: BoxFit.cover,
        );
      }
    }

    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: MyColors().textBackground,
            style: BorderStyle.solid,
          )),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: _decideImageView(),
      ),
    );
  }

  // container that holds the title && description in a {key:Value} pairs style
  Widget _customRow({@required String title, @required String description}) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          color: MyColors().cardBackground,
        ),
        child: Row(
          children: [_customText(title, true), _customText(description, false)],
        ),
      );

  Widget _horizontalLine() => Container(
        height: 1,
        color: MyColors().textBackground,
      );

  // handler for title and description text
  Widget _customText(text, isTitle) {
    // text style for title || DON'T TOUCH IT
    var _titleTextStyle = TextStyle(
        color: MyColors().textColor, fontSize: 18, fontWeight: FontWeight.bold);

    // text style for description || DON'T TOUCH IT
    var _descriptionTextStyle = TextStyle(
      color: MyColors().primaryColor,
      fontSize: 18,
    );

    return Expanded(
      flex: (isTitle) ? 2 : 3,
      child: Text(text,
          textAlign: (isTitle) ? TextAlign.left : TextAlign.right,
          style: (isTitle) ? _titleTextStyle : _descriptionTextStyle),
    );
  }
}
