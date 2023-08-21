import 'package:flutter/material.dart';
import '../Constants/constants.dart';

class finalButton extends StatelessWidget {
  finalButton({required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: kbottomContainerColor,
        width: double.infinity,
        height: 60.0,
        child: Expanded(
          child: Center(
            child: Text(
              title.toString(),
              style: ksubmitButtonStyle,
            ),
          ),
        ),
      ),
    );
  }
}
