import 'package:flutter/material.dart';
import 'const.dart';

class BottomContainer extends StatelessWidget {
  final String bottomContainerText;
  final Function onTap;
  BottomContainer({this.bottomContainerText, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.0,
        width: double.infinity,
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            bottomContainerText,
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
