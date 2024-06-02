import 'dart:math';

import 'package:dice_roll/styled_text_button.dart';
import 'package:flutter/material.dart';

const double imageWidth = 200.0;
const double sizeBoxHeight = 20.0;

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: imageWidth,
        ),
        const SizedBox(
          height: sizeBoxHeight,
        ),
        StyledTextButton(rollDice),
      ],
    );
  }
}
