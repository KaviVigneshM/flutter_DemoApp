import 'package:flutter/material.dart';
import '../modals/ClothBrandData.dart';
import '../resources/string.dart';
import '../widget/ClothBrandCard.dart';

class ClothBrands extends StatelessWidget {
  List<ClothBrandData> clothdatas = [
    ClothBrandData(
        imgtitle: 'assets/images/aldo.png',
        amount: '1000 Pts',
        brandtitle: 'P 500 OFF on Shoes',
        backImage: 'assets/images/aldo_man.png'),
    ClothBrandData(
        imgtitle: 'assets/images/raffles.png',
        amount: '1000 Pts',
        brandtitle: 'Get Hair Spa & Styling',
        backImage: 'assets/images/raffles_girl.png'),
    ClothBrandData(
        imgtitle: 'assets/images/raffles.png',
        amount: '1000 Pts',
        brandtitle: 'Get Hair Spa & Styling',
        backImage: 'assets/images/raffles_girl.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            string.canGet,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF7B7BB3),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (clothdatas.map((item) {
              return ClothBrandCard(clothdetail: item);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
