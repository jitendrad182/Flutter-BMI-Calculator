import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget reusableCardChild;
  final Color reusableCardColor;
  final Function onTap;

  ReusableCard({this.reusableCardChild, this.reusableCardColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: reusableCardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: reusableCardColor,
          ),
        ),
      ),
    );
  }
}
