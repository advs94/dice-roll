import 'package:dice_roll/dice_roller.dart';
import 'package:dice_roll/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Center(
            child: DiceRoller(),
          ),
        ),
      ),
    ),
  );
}
