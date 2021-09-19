import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../resources/string.dart';

class FindButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton(
        child: Text(string.find),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 18,
          ),
          onPrimary: AppColors().black,
          primary: AppColors().white,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          side: BorderSide(color: AppColors().black, width: 2),
          elevation: 0,
        ),
      ),
    );
  }
}
