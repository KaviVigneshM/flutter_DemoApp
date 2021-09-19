import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resources/string.dart';
import '../widget/MovieCards.dart';
import '../widget/MovieAmazon.dart';
import '../widget/OttPlatform.dart';

class MovieSuggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
      padding: EdgeInsets.fromLTRB(20, 40, 10, 32),
      decoration: BoxDecoration(
        color: AppColors().black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            string.mySubcription,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors().white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                AppColors().pale_salmon,
                AppColors().cornflower,
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds),
            child: Text(
              string.myinfo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors().white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MovieCards(),
          SizedBox(
            height: 32,
          ),
          MovieAmazon(),
          SizedBox(
            height: 30.3,
          ),
          OttPlatform(),
        ],
      ),
    );
  }
}
