import 'package:flutter/material.dart';
import '../theme/AppColors.dart';
import '../resources/string.dart';
import '../widget/MoviePoster.dart';
import '../modals/MovieData.dart';

class MovieCards extends StatelessWidget {
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
                    string.popular,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors().white,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset('assets/images/netflix.png'),
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
