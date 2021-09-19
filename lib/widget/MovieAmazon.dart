import 'package:flutter/material.dart';

import '../widget/MoviePoster.dart';
import '../modals/MovieData.dart';
import '../theme/AppColors.dart';
import '../resources/string.dart';

class MovieAmazon extends StatelessWidget {
  List<MovieData> moviedatas = [
    MovieData(img1: 'assets/images/stranger.png'),
    MovieData(img1: 'assets/images/13_reason.png'),
    MovieData(img1: 'assets/images/13_reason.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    string.latestOn,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Image.asset(
                      'assets/images/prime.png',
                    ),
                  )
                ],
              ),
              Text(
                string.viewAll,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors().lightish_blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (moviedatas.map((item) {
              return MoviePoster(moviedetails: item);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
