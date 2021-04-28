import 'package:bmi/bmi_brain.dart';
import 'package:bmi/bottom_container.dart';
import 'package:bmi/const.dart';
import 'package:bmi/reusable_card.dart';
import 'package:bmi/reusable_card_child_1.dart';
import 'package:bmi/reusable_card_child_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card_child_3.dart';
import 'result_page.dart';

int weight = 60;
int age = 20;
int height = 180;
Gender selectedGender;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  reusableCardColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  reusableCardChild: ReusableCardChild1(
                    iconData: FontAwesomeIcons.mars,
                    textLabel: "MALE",
                  ),
                ),
                ReusableCard(
                  reusableCardColor: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  reusableCardChild: ReusableCardChild1(
                    iconData: FontAwesomeIcons.venus,
                    textLabel: "FEMALE",
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
              reusableCardColor: kActiveCardColor,
              reusableCardChild: ReusableCardChild2(
                height: height,
                onChanged: (double newValue) {
                  setState(() {
                    return height = newValue.round();
                  });
                },
              )),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                    reusableCardColor: kActiveCardColor,
                    reusableCardChild: ReusableCardChild3(
                      labelText: "WEIGHT",
                      numberText: weight,
                      onPress1: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onPress2: () {
                        setState(() {
                          weight++;
                        });
                      },
                      iconData1: FontAwesomeIcons.minus,
                      iconData2: FontAwesomeIcons.plus,
                    )),
                ReusableCard(
                  reusableCardColor: kActiveCardColor,
                  reusableCardChild: ReusableCardChild3(
                    labelText: "AGE",
                    numberText: age,
                    onPress1: () {
                      setState(() {
                        age--;
                      });
                    },
                    onPress2: () {
                      setState(() {
                        age++;
                      });
                    },
                    iconData1: FontAwesomeIcons.minus,
                    iconData2: FontAwesomeIcons.plus,
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(
            bottomContainerText: "CALCULATE",
            onTap: () {
              BmiBrain bmiBrain = BmiBrain(height: height, weight: weight);
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              result: bmiBrain.bmiResult(),
                              resultDescription:
                                  bmiBrain.bmiResultDescription(),
                              resultString: bmiBrain.bmiResultString(),
                            )));
              });
            },
          )
        ],
      ),
    );
  }
}
