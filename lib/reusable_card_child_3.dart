import 'package:flutter/material.dart';
import 'const.dart';

class ReusableCardChild3 extends StatelessWidget {
  final String labelText;
  final int numberText;
  final IconData iconData1;
  final IconData iconData2;
  final Function onPress1;
  final Function onPress2;
  ReusableCardChild3(
      {this.labelText,
      this.numberText,
      this.iconData1,
      this.iconData2,
      this.onPress1,
      this.onPress2});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelText,
          style: kLabelTextStyle,
        ),
        Text(
          numberText.toString(),
          style: kNumberTextStyle,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          FloatingActionButton(
            onPressed: onPress1,
            backgroundColor: kInactiveCardColor,
            child: Icon(
              iconData1,
              color: kIconColor,
            ),
          ),
          FloatingActionButton(
            onPressed: onPress2,
            backgroundColor: kInactiveCardColor,
            child: Icon(
              iconData2,
              color: kIconColor,
            ),
          ),
        ])
      ],
    );
  }
}
