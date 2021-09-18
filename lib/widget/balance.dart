import 'package:flutter/material.dart';
import '../theme/AppColors.dart';
import '../widget/balanceCard.dart';
import '../modals/BalanceData.dart';
import '../widget/Suggest.dart';

class balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BalanceData> details = [
      BalanceData(
          title: 'Load Balance',
          amount: 'P 1675.00',
          icon: 'assets/images/card_P.png',
          validity: 'Valid till 26 Dec'),
      BalanceData(
          title: 'Data Balance',
          amount: '300 MB',
          icon: 'assets/images/card_play.png',
          validity: 'of 12 GB'),
      BalanceData(
          title: 'Data Balance',
          amount: '300 MB',
          icon: 'assets/images/card_play.png',
          validity: 'of 12 GB'),
    ];
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
            child: Row(
                children: (details.map((item) {
              return balanceCard(data: item);
            })).toList()),
          ),
          Suggest(),
        ],
      ),
    );
  }
}
