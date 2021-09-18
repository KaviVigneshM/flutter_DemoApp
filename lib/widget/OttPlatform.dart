import 'package:demo_app/theme/AppColors.dart';
import 'package:flutter/material.dart';
import '../resources/string.dart';
import '../widget/OttCard.dart';
import '../modals/OttData.dart';

class OttPlatform extends StatelessWidget {
  List<OttData> ottdatas = [
    OttData(
        imgtitle: 'assets/images/hQ.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().grape_purple),
    OttData(
        imgtitle: 'assets/images/iflix.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().red_brown),
    OttData(
        imgtitle: 'assets/images/iflix.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppColors().lightish_blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            string.youMight,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors().white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: (ottdatas.map((item) {
              return OttCard(ottdeatils: item);
            })).toList()),
          ),
        ],
      ),
    );
  }
}
