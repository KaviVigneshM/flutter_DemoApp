import 'package:flutter/material.dart';

import '../services/UserBalanceService.dart';
import '../widget/balance.dart';

class UserBalanceContainer extends StatefulWidget {
  @override
  _UserBalanceContainerState createState() => _UserBalanceContainerState();
}

class _UserBalanceContainerState extends State<UserBalanceContainer> {
  var balanceList;
  @override
  void initState() {
    super.initState();
    balanceList = UserBalanceService.getBalanceData(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: balanceList,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return balance(snapshot.data);
          }
          return Center(
            child: Text('Error!'),
          );
        });
  }
}
