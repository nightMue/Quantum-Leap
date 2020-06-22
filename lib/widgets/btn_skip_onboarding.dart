import 'package:flutter/material.dart';
import 'package:quantum_leap/constants/my_navigator.dart';

class SkipButtonOnboarding extends StatelessWidget {
  final Color textColor;

  const  SkipButtonOnboarding({Key key, this.textColor}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyNavigator.goToHome(context);
      },
      child: Text(
        "Skip",
        style: TextStyle(
          color: this.textColor,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Product Sans",
        )
      )
    );
  }
}