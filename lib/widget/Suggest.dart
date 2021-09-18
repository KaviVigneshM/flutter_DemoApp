import 'package:flutter/material.dart';
import '../resources/string.dart';
import '../theme/AppColors.dart';
import '../modals/SuggestData.dart';
import '../widget/SuggestCard.dart';

class Suggest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SuggestData> suggestdetails = [
      SuggestData(
          offerName: 'GoUNLI350', offerValidity: '30 days UNLI to Globe'),
      SuggestData(
          offerName: 'GoUNLI180', offerValidity: '15 days UNLI to Globe'),
      SuggestData(
          offerName: 'GoUNLI180', offerValidity: '15 days UNLI to Globe'),
    ];
    return Container(
      margin: EdgeInsets.fromLTRB(24, 27, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                string.recommended,
                style: TextStyle(
                  color: AppColors().greyish_brown_three,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  string.viewAll,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors().lightish_blue,
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (suggestdetails.map((item) {
              return SuggestCard(dataDetails: item);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
