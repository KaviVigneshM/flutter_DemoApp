import 'package:demo_app/theme/AppColors.dart';
import 'package:flutter/material.dart';
import '../theme/AppColors.dart';

class LifeStylePage extends StatefulWidget {
  @override
  _LifeStylePageState createState() => _LifeStylePageState();
}

class _LifeStylePageState extends State<LifeStylePage> {
  int badgeCount = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().lightish_blue,
      appBar: AppBar(
        title: Text("LifeStylePage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
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
    );
  }
}
