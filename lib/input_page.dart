import 'package:flutter/material.dart';

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
                  colour: activeCardColour,
                ),
                ReusableCard(
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

class ReusableCard extends StatelessWidget {
  final Color colour;
  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
