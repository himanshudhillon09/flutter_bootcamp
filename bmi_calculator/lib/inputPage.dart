import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Card.dart';
import 'IconContent.dart';

const bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: emptyCard(
                    cardChild: IconContent('Male', FontAwesomeIcons.mars),
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                  ),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: emptyCard(
                    cardChild: IconContent('Female', FontAwesomeIcons.venus),
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                  ),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              )
            ],
          )),
          Expanded(
            child: Card(),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: emptyCard(),
              ),
              Expanded(
                child: emptyCard(),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            width: double.infinity,
            height: 60.0,
          )
        ],
      ),
    );
  }
}
