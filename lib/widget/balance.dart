import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../widget/balanceCard.dart';
import '../widget/Suggest.dart';

class balance extends StatelessWidget {
  final balanceList;
  @override
  balance(this.balanceList);
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      decoration: BoxDecoration(
        color: AppColors().ice_blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ...balanceList.map((item) => balanceCard(data: item)).toList(),
            ]),
          ),
          Suggest(),
        ],
      ),
    );
  }
}
