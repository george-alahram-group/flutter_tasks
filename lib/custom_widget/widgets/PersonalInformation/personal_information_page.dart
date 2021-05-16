import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/AdsPage/CustomerServicesPage.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class PersonalInformationPage extends StatelessWidget {

  const PersonalInformationPage({Key key}) : super(key: key);

  _openGallery() {

  }

  _openCamera() {

  }

  Future<void> _showChoiceDialog (BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a Choice!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              CustomInkWell(
                inkPadding: 10,
                chilledPadding: 10,
                child: Text("Gallery"),
                fun: () {_openGallery();},
              ),
              CustomInkWell(
                inkPadding: 10,
                chilledPadding: 10,
                child: Text("Camera"),
                fun: () {_openCamera();}
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
          padding: EdgeInsets.all(15),
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
                      child: ProfilePicture(),
                    ),
                    CustomInkWell(
                      child: Icon(Icons.camera_alt,color: MyColors().primaryColor,size: 30,),
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
              )
            ],
          ),
        ));
  }
}

class CustomInkWell extends StatelessWidget {

  final Function fun;
  final double chilledPadding;
  final double inkPadding;
  final Widget child;

  CustomInkWell({this.fun, this.chilledPadding, this.inkPadding, this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(inkPadding),
      child: Padding(
        padding: EdgeInsets.all(chilledPadding),
        child: child,
      ),
      onTap: fun,
    );
  }
}

