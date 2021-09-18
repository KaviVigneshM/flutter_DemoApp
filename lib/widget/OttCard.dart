import 'package:flutter/material.dart';
import '../theme/AppColors.dart';
import '../modals/OttData.dart';

class OttCard extends StatelessWidget {
  final OttData ottdeatils;
  OttCard({required this.ottdeatils});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 145,
          height: 168,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ottdeatils.bgcolor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 15, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  ottdeatils.imgtitle,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  ottdeatils.subscribe,
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  ottdeatils.amount,
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
