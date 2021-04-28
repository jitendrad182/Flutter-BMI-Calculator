import 'package:flutter/material.dart';
import 'const.dart';

class ReusableCardChild2 extends StatelessWidget {
  final int height;
  final Function onChanged;
  ReusableCardChild2({this.height, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "HEIGHT",
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              "cm",
              style: kLabelTextStyle,
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbColor: kBottomContainerColor,
              inactiveTrackColor: kIconColor,
              activeTrackColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
              overlayColor: kOverLayColor,
              overlayShape: RoundSliderOverlayShape(overlayRadius: 28)),
          child: Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
