import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/MyColors.dart';

class KnowledgeBasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Customer Services Page"),
          backgroundColor: MyColors().primaryColor,
        ),
        backgroundColor: MyColors().background,
        body: CustomExpansionList());
  }
}

class KnowledgeBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [

        ],
      ),
    );
  }
}

class CustomExpansionList extends StatefulWidget {
  @override
  _CustomExpansionListState createState() => _CustomExpansionListState();
}

class _CustomExpansionListState extends State<CustomExpansionList> {

  List<bool> _isOpen;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      animationDuration: Duration(seconds: 2),
      dividerColor: MyColors().textColor.withAlpha(75),
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.all(8),
      expansionCallback: (i, isOpen) => {
        setState(() =>
          _isOpen[i] = !isOpen
        )
      },
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/splash_screen.png",
            description: [
              "Splash Screen displays while the application or other item is loading"
            ],
            title: 'figure 1',
          ),
          isExpanded: _isOpen[0],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/choose_language.png",
            description: [
              "1- Choose Arabic as a Primary app's language",
              "2- Choose English as a Primary app's language",
              "3- Choose Your Country that you live in",
              "4- Skip to move to the next Screen",
            ],
            title: 'figure 2',
          ),
          isExpanded: _isOpen[1],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/choose_language.png",
            description: [
              "1- Choose Arabic as a Primary app's language",
              "2- Choose English as a Primary app's language",
              "3- Choose Your Country that you live in",
              "4- Skip to move to the next Screen",
            ],
            title: 'figure 2',
          ),
          isExpanded: _isOpen[2],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/choose_country.png",
            description: [
              "Choose your country from this list of available countries",
            ],
            title: 'figure 3',
          ),
          isExpanded: _isOpen[3],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/login_screen.png",
            description: [
              "1- you can sign in using mobile number or email",
              "2- password here",
              "3- login button",
              "4- for retrieving password if you forget your password",
              "5- Sign in methods (you can choose between gmail / facebook / i Cloud account)",
              "6- register if you don't have an account",
              "7- skip login and go into app contents",
            ],
            title: 'figure 4',
          ),
          isExpanded: _isOpen[4],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/register_screen.jpg",
            description: [
              "1- full name filed",
              "2- email filed",
              "3- Choose Your Country that you live in",
              "4- valid number",
              "5- password field",
              "6- confirmation password field",
              "7- register button",
              "8- registration methods (you can choose between gmail / facebook / i Cloud account)",
              "9- go to sign in screen if you already have an account",
              "10- skip the registration process and go into app contents",
            ],
            title: 'figure 5',
          ),
          isExpanded: _isOpen[5],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/main_categories_gest_user.png",
            description: [
              "1- shopping cart and the number above is the cart items counter",
              "2- support button ( call us )",
              "3- search button",
              "4- list of main categories",
              "5- bottom navigation bar \n  (it will shows a 3 buttons only if you don't logged in before)\n  you will be able to add an Ads if you login with any login methods",
              "6- Services button \n  navigates you to the Services screen",
            ],
            title: 'figure 6',
          ),
          isExpanded: _isOpen[5],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/main_categories_loedin.png",
            description: [
              "the Main categories screen will appear like this if you are logged in",
            ],
            title: 'figure 7',
          ),
          isExpanded: _isOpen[5],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/vehicles_list.png",
            description: [
              "1- Ad space",
              "2- Vehicles List",
            ],
            title: 'figure 8',
          ),
          isExpanded: _isOpen[6],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/models_list.png",
            description: [
              "Cars Models List",
            ],
            title: 'figure 9',
          ),
          isExpanded: _isOpen[7],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/personal_info_gest_in.png",
            description: [
              "Personal Info if you aren't logged in:",
              "1- profile picture and user name",
              "2- your purchases list",
              "3- your sales items",
              "4- your cart items",
              "5- your services list",
              "6- your parts",
              "7- accessories list",
              "8- your vehicles list",
              "9- setting",
              "10- login button if you aren't logged in yet",
            ],
            title: 'figure 10',
          ),
          isExpanded: _isOpen[8],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/personal_info_loged_in.png",
            description: [
              "Personal Info if you aren't logged in",
            ],
            title: 'figure 11',
          ),
          isExpanded: _isOpen[8],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/add_ads.jpg",
            description: [
              "Add Ads Screen For personal",
              "1- you can choose between Personal Ad or Company Ad",
              "2- Add the appropriate image/s that describe the advertisement correctly",
              "3- You can limit the number of items available from this product",
              "4- To select the preferred method of communication with customer and support team",
              "5- Make sure to enter the data properly and appropriately so that you get access from users"
            ],
            title: 'figure 12',
          ),
          isExpanded: _isOpen[8],
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) => Container(
            child: Text("headerBuilder"),
          ),
          body: ScreenShoot(
            image: "assets/images/add_ads_company.jpg",
            description: [
              "Add Ads Screen For Company",
              "1- If you want to add a corporate advertisement, we will need you to add this additional company information"
            ],
            title: 'figure 13',
          ),
          isExpanded: _isOpen[9],
        ),
      ],
    );
  }
}

class ScreenShoot extends StatelessWidget {
  final String title;
  final String image;
  final List<String> description;

  ScreenShoot({@required this.title, @required this.image, this.description});
  @override
  Widget build(BuildContext context) {
    return

    Container(
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
                    CustomText(description[i])
                ],
              )),
        ],
      ),
    );
  }
}


/*
Container(
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
                    CustomText(description[i])
                ],
              )),
        ],
      ),
    )
*/

class CustomText extends StatelessWidget {
  final String text;

  CustomText(this.text);

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

class Spacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
    );
  }
}
