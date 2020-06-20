import 'package:flutter/material.dart';

class QuantumLeap {
  static const String name = "Quantum Leap";
  static const String description = "Take the leap!\n Challenge yourself!";
  static const String wt1 = "Your puzzle is composed of various states.";
  static const String wc1 =
      "States can either be on (white), off (black), or random (outline). Random states can become either  'on' or 'off.'";
  static const String wt2 = "Your game controls are called gates.";
  static const String wc2 =
      "Each gate (X, Z, H and CZ)  performs a different action upon the state. As you play your gates, keep track of how they affect the states.";
  static const String wt3 = "Your objective is to match your board to the target.";
  static const String wc3 =
      "Match the states on your puzzle  board to the target by applying various gates. Sound simple enough?";
  static const String skip = "SKIP";
  static const String next = "NEXT";
  static const String gotIt = "GOT IT";

  static const Color bg_main = Color.fromRGBO(0, 5, 48, 1);
  static const Color bg_main_lighter = Color.fromRGBO(1, 8,  74, 1);
}