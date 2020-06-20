import 'package:flutter/material.dart';
import 'package:quantum_leap/constants/QuantumLeap.dart';
import 'package:quantum_leap/ui/mains/home.dart';
import 'package:quantum_leap/ui/mains/splash_screen.dart';
import 'package:quantum_leap/ui/onboarding/intro_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: QuantumLeap.bg_main, accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));