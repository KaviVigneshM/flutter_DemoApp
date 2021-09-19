import 'package:flutter/material.dart';

import '../modals/LatestData.dart';
import '../theme/AppColors.dart';

class LatestPromoCard extends StatelessWidget {
  final LatestData latestdetails;
  LatestPromoCard({required this.latestdetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Card(
          elevation: 0,
          child: Container(
            width: 150,
            height: 168,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(latestdetails.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    latestdetails.icon,
                    width: 18,
                    height: 18,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    latestdetails.title,
                    style: TextStyle(color: AppColors().white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    latestdetails.subtitle,
                    style: TextStyle(
                      color: AppColors().white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    latestdetails.amount,
                    style: TextStyle(
                      color: AppColors().white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
