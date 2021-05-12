import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/widgets/knowledge_base/model/ScreenShootData.dart';
import 'package:flutter_app/custom_widget/widgets/Spacer.dart';
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

List<ScreenShootData> screenShootData() {
  return [
    ScreenShootData(
      title: 'splash screen',
      image: 'assets/images/splash_screen.png',
      description:
          "Splash Screen displays while the application or other item is loading",
      isExpanded: true,
    ),
    ScreenShootData(
      title: 'choose language',
      image: 'assets/images/choose_language.png',
      description:
          "1- Choose Arabic as a Primary app's language \n 2- Choose English as a Primary app's language \n 3- Choose Your Country that you live in \n 4- Skip to move to the next Screen",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'choose country',
      image: 'assets/images/choose_country.png',
      description: "Choose your country from this list of available countries",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'login screen',
      image: 'assets/images/login_screen.png',
      description: "1- you can sign in using mobile number or email \n" +
          "2- password here \n" +
          "3- login button \n" +
          "4- for retrieving password if you forget your password \n" +
          "5- Sign in methods (you can choose between gmail / facebook / i Cloud account) \n" +
          "6- register if you don't have an account \n" +
          "7- skip login and go into app contents",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'register screen',
      image: 'assets/images/register_screen.jpg',
      description: "1- full name filed \n" +
          "2- email filed \n" +
          "3- Choose Your Country that you live in \n" +
          "4- valid number \n" +
          "5- password field \n" +
          "6- confirmation password field \n" +
          "7- register button \n" +
          "8- registration methods (you can choose between gmail / facebook / i Cloud account) \n" +
          "9- go to sign in screen if you already have an account \n" +
          "10- skip the registration process and go into app contents \n",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'main categories for guest user',
      image: 'assets/images/main_categories_gest_user.png',
      description:
          "1- shopping cart and the number above is the cart items counter \n" +
              "2- support button ( call us ) \n" +
              "3- search button \n" +
              "4- list of main categories \n" +
              "5- bottom navigation bar \n  (it will shows a 3 buttons only if you don't logged in before)\n  you will be able to add an Ads if you login with any login methods \n" +
              "6- Services button \n  navigates you to the Services screen \n",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'main categories for logged in user',
      image: 'assets/images/main_categories_loedin.png',
      description:
          "the Main categories screen will appear like this if you are logged in",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'vehicles screen',
      image: 'assets/images/vehicles_list.png',
      description: "1- Ad space \n" + "2- Vehicles List",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'cars models',
      image: 'assets/images/models_list.png',
      description: "Cars Models List",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'personal information for guest user',
      image: 'assets/images/personal_info_gest_in.png',
      description: "Personal Info if you aren't logged in: \n" +
          "1- profile picture and user name \n" +
          "2- your purchases list \n" +
          "3- your sales items \n" +
          "4- your cart items \n" +
          "5- your services list \n" +
          "6- your parts \n" +
          "7- accessories list \n" +
          "8- your vehicles list \n" +
          "9- setting \n" +
          "10- login button if you aren't logged in yet \n",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'personal information for logged in user',
      image: 'assets/images/personal_info_loged_in.png',
      description: "Personal Info if you aren't logged in",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'add ads ( persons )',
      image: 'assets/images/add_ads.jpg',
      description: "Add Ads Screen For personal \n" +
          "1- you can choose between Personal Ad or Company Ad \n" +
          "2- Add the appropriate image/s that describe the advertisement correctly \n" +
          "3- You can limit the number of items available from this product \n" +
          "4- To select the preferred method of communication with customer and support team \n" +
          "5- Make sure to enter the data properly and appropriately so that you get access from users",
      isExpanded: false,
    ),
    ScreenShootData(
      title: 'add ads companies',
      image: 'assets/images/add_ads_company.jpg',
      description: "Add Ads Screen For Company \n" +
          "1- If you want to add a corporate advertisement, we will need you to add this additional company information",
      isExpanded: false,
    ),
  ];
}

class CustomExpansionList extends StatefulWidget {
  @override
  _CustomExpansionListState createState() => _CustomExpansionListState();
}

class _CustomExpansionListState extends State<CustomExpansionList> {
  List<ScreenShootData> _data = [];

  @override
  void initState() {
    _data = screenShootData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          animationDuration: Duration(seconds: 1),
          dividerColor: MyColors().textColor.withAlpha(15),
          elevation: 2,
          expandedHeaderPadding: EdgeInsets.all(15),
          expansionCallback: (int i, bool isOpen) {
            setState(() {
              _data[i].isExpanded = !isOpen;
            });
          },
          children: _data.map<ExpansionPanel>((item) {
            return _customExpansionPanel(
                title: item.title,
                image: item.image,
                description: item.description,
                isExpanded: item.isExpanded);
          }).toList(),
        ),
      ),
    );
  }

  ExpansionPanel _customExpansionPanel(
      {title, image, String description, isExpanded}) {
    return ExpansionPanel(
      canTapOnHeader: true,
      backgroundColor: MyColors().cardBackground,
      headerBuilder: (BuildContext context, bool isExpanded) => Container(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            title,
            style: TextStyle(
              color: MyColors().textColor,
            ),
          ),
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      ),
      body: Container(
        child: ExpansionPanelBody(
          image: image,
          description: description,
        ),
      ),
      isExpanded: isExpanded,
    );
  }
}

class ExpansionPanelBody extends StatelessWidget {

  final String image;
  final String description;

  ExpansionPanelBody({@required this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            image,
            alignment: Alignment.center,
          ),
          CustomSpacer(
            height: 15,
          ),
          Text(
            description,
            style: TextStyle(color: MyColors().textColor),
          )
        ],
      ),
    );
  }
}
