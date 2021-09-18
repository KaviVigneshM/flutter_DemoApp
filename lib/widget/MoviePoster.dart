import 'package:flutter/material.dart';
import '../modals/MovieData.dart';

class MoviePoster extends StatelessWidget {
  final MovieData moviedetails;
  MoviePoster({required this.moviedetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          width: 140,
          height: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(moviedetails.img1),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
