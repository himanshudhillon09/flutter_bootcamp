import 'package:flutter/material.dart';

const cardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {this.colour = activeCardColor,
      this.cardChild = const SizedBox(
        width: double.infinity,
      )});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
