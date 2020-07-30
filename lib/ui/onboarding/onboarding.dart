import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:quantum_leap/constants/QuantumLeap.dart';
import 'package:quantum_leap/constants/my_navigator.dart';
import 'package:quantum_leap/widgets/btn_skip_onboarding.dart';

class OnBoarding extends  StatelessWidget{
  static const TextStyle goldcoinBlackStyle = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Product Sans"
  );

  static const TextStyle goldCoinWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Product Sans"
  );

  static const TextStyle blackStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.black,
    fontFamily: "Product Sans"
  );

  static const TextStyle whiteStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.white,
    fontFamily: "Product Sans"
  );

  static const TextStyle boldStyleBlack = TextStyle(
    fontSize: 25.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold
  );

  static const TextStyle boldStyleWhite = TextStyle(
    fontSize: 25.0,
    color: Colors.white,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold
  );

  static const TextStyle descriptionBlackStyle = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );
  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Quantum Leap",
                  style: goldcoinBlackStyle,
                ),
                SkipButtonOnboarding(textColor: Colors.black)
              ],
            ),
          ),
          Image.asset("assets/img/one.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your puzzle is composed of various states.",
                  style: boldStyleBlack,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "States can either be on (white), off (black), or random (outline). Random states can become either  'on' or 'off.'",
                  style: descriptionBlackStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: QuantumLeap.bg_main_lighter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Quantum Leap",
                  style: goldCoinWhiteStyle,
                ),
                SkipButtonOnboarding(textColor:Colors.white)
              ],
            ),
          ),
          Image.asset("assets/img/two.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your game controls are called gates.",
                  style: boldStyleWhite,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Each gate (X, Z, H and CZ)  performs a different action upon the state. Keep track of how they affect the states.",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: QuantumLeap.bg_main_lightest,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Quantum Leap",
                  style: goldcoinBlackStyle,
                ),
                SkipButtonOnboarding(textColor: Colors.black)
              ],
            ),
          ),
          Image.asset("assets/img/three.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your objective is to match your board to the target.",
                  style: boldStyleBlack,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Match the states on your puzzle  board to the target by applying various gates. Sound simple enough?",
                  style: descriptionBlackStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
      pages: pages,
      enableLoop: true,
      fullTransitionValue: 800,
      enableSlideIcon: true,
      waveType: WaveType.liquidReveal,
      positionSlideIcon: 0.5,
    ));
  }
}