import 'package:demo_app/modals/SuggestData.dart';
import 'package:flutter/material.dart';
import '../theme/AppColors.dart';
import '../modals/SuggestData.dart';

class SuggestCard extends StatelessWidget {
  final SuggestData dataDetails;
  SuggestCard({required this.dataDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: AppColors().lightish_blue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                dataDetails.offerName,
                style: TextStyle(
                  fontSize: 9,
                  color: AppColors().white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                dataDetails.offerValidity,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors().white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
