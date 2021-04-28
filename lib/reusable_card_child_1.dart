import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class ReusableCardChild1 extends StatelessWidget {
  final IconData iconData;
  final String textLabel;
  ReusableCardChild1({this.iconData, this.textLabel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          textLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
