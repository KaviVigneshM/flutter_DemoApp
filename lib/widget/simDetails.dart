import 'package:flutter/material.dart';

import '.././resources/string.dart';
import '../theme/AppColors.dart';

class simDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            string.myPrepaid,
            style:
                TextStyle(color: AppColors().greyish_brown_two, fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      string.phoneNumber,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
