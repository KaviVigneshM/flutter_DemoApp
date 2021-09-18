import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './theme/AppColors.dart';
import './widget/simDetails.dart';
import './widget/balance.dart';
import './widget/SpecialPromo.dart';
import './widget/Roaming.dart';
import './widget/LatestPromo.dart';
import './widget/Global.dart';
import './widget/ClothBrands.dart';
import './widget/FindButton.dart';
import './widget/MovieSuggestion.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppPage(),
  ));
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors().white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/hamburgerMenu_Icon.png'),
            );
          },
        ),
        actions: <Widget>[
          Badge(
            badgeContent: Text('3'),
            position: BadgePosition.topEnd(top: 4, end: 3),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
              iconSize: 33,
              color: AppColors().black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 20,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            simDetails(),
            balance(),
            SpecialPromo(),
            LatestPromo(),
            Roaming(),
            Global(),
            ClothBrands(),
            FindButton(),
            MovieSuggestion(),
          ],
        ),
      ),
    );
  }
}
