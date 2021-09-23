import 'dart:convert';

import 'package:flutter/material.dart';

import '../modals/BalanceDataModal.dart';

class UserBalanceService {
  static Future getBalanceData(BuildContext context) async {
    final response = await DefaultAssetBundle.of(context)
        .loadString('mock/UserBalance.json');
    final data = jsonDecode(response);
    final balanceList =
        data.map((item) => BalanceDataModal.fromJson(item)).toList();
    return balanceList;
  }
}
