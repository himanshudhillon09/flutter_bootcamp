import 'package:flutter/material.dart';

const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: Card(),
              ),
              Expanded(
                child: Card(),
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
                child: Card(),
              ),
              Expanded(
                child: Card(),
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

class Card extends StatelessWidget {
  Card({this.colour = cardColor});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
