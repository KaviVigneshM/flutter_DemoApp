import 'package:flutter/material.dart';
import '../resources/string.dart';
import '../theme/AppColors.dart';

class Promo extends StatelessWidget {
  final String promoData;
  final String goData;
  final String planData;
  final String plansubtitleData;
  final String exploreData;
  final String bgImage;

  Promo(this.promoData, this.goData, this.planData, this.plansubtitleData,
      this.exploreData, this.bgImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              promoData,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors().white,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            elevation: 0,
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bgImage),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    goData,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        AppColors().white,
                        AppColors().white_shade,
                      ],
                      tileMode: TileMode.clamp,
                    ).createShader(bounds),
                    child: Text(
                      planData,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors().white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    plansubtitleData,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          exploreData,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors().white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: AppColors().white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
