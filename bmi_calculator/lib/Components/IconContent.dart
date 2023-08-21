import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.iconName, this.iconInside);
  final IconData iconInside;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconInside,
          size: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconName,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 17),
        )
      ],
    );
  }
}
