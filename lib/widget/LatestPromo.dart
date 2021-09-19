import 'package:flutter/material.dart';

import '../resources/string.dart';
import '../theme/AppColors.dart';
import '../modals/LatestData.dart';
import '../widget/LatestPromoCard.dart';

class LatestPromo extends StatelessWidget {
  List<LatestData> latestdatas = [
    LatestData(
      title: 'Spotify Premium',
      amount: 'P 129.00 /m',
      subtitle: 'Subscribe for',
      icon: 'assets/images/spotify.png',
      image: 'assets/images/spotify_bg.png',
    ),
    LatestData(
      title: 'Facebook Surf',
      amount: 'P 50.00 /m',
      subtitle: 'Get pack for',
      icon: 'assets/images/facebook.png',
      image: 'assets/images/facebook_bg.png',
    ),
    LatestData(
      title: 'Instagram',
      amount: 'P 120.00 /m',
      subtitle: 'Subscribe for',
      icon: 'assets/images/instagram.png',
      image: 'assets/images/facebook_bg.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    AppColors().sapphire,
                    AppColors().lavender_pink,
                  ],
                  tileMode: TileMode.clamp,
                ).createShader(bounds),
                child: Text(
                  string.latestPromo,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors().white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  string.viewAll,
                  style: TextStyle(
                    color: AppColors().lightish_blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (latestdatas.map((item) {
              return LatestPromoCard(latestdetails: item);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
