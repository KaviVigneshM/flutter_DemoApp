import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../modals/ClothBrandData.dart';

class ClothBrandCard extends StatelessWidget {
  final ClothBrandData clothdetail;
  ClothBrandCard({required this.clothdetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Card(
        elevation: 0,
        child: Container(
          width: 145,
          height: 168,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(clothdetail.backImage),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 45, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  clothdetail.imgtitle,
                  width: 64,
                  height: 28,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  clothdetail.amount,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  clothdetail.brandtitle,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
