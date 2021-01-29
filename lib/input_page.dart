import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomCardColour = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  cardChild: IconContent(
                    label: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),
                  colour: activeCardColour,
                ),
                ReusableCard(
                  cardChild: IconContent(
                    label: "FEMALE",
                    icon: FontAwesomeIcons.venus,
                  ),
                  colour: activeCardColour,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                ReusableCard(
                  colour: activeCardColour,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colour: activeCardColour,
                ),
                ReusableCard(
                  colour: activeCardColour,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            color: bottomCardColour,
            width: double.infinity,
            height: bottomContainerHight,
          ),
        ],
      ),
    );
  }
}
