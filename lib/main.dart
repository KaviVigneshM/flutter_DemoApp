import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import './resources/string.dart';
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
import 'widget/LifeStylePage.dart';
import './container/UserBalanceContainer.dart';

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
  int badgeCount = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors().white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
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
      body: ListView(
        children: <Widget>[
          simDetails(),
          UserBalanceContainer(),
          SpecialPromo(),
          LatestPromo(),
          Roaming(),
          Global(),
          ClothBrands(),
          FindButton(),
          MovieSuggestion(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: AppColors().warm_blue_two,
        unselectedItemColor: AppColors().black,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone_android_outlined),
            ),
            label: 'Mobile',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LifeStylePage()),
                );
              },
              icon: Icon(Icons.wine_bar_outlined),
            ),
            label: 'LifeStyle',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.wallet_membership_outlined),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_outlined),
            ),
            label: 'More',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors().purpleish_blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      string.myPrepaid,
                      style: TextStyle(
                        color: AppColors().white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    string.phoneNumber,
                    style: TextStyle(
                      color: AppColors().white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
                title: Text(
                  string.aboutGlobe,
                  style: TextStyle(
                    color: AppColors().black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text(
                  string.payment,
                  style: TextStyle(
                    color: AppColors().black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
