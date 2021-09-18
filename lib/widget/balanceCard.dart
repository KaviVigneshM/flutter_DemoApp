import 'package:flutter/material.dart';
import '../theme/AppColors.dart';
import '../modals/BalanceData.dart';

class balanceCard extends StatelessWidget {
  final BalanceData data;
  balanceCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 0, 5),
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 50, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(data.icon),
                  radius: 16,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  data.title,
                  style: TextStyle(
                      fontSize: 12, color: AppColors().greyish_brown_two),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  data.amount,
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors().black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  data.validity,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors().black_two,
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
