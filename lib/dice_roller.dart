import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var interactiveDice = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(7) + 1;
    setState(() {
      interactiveDice = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          interactiveDice,
          width: 200,
          height: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 60, 243, 28),
            foregroundColor: Colors.black,
          ),
          child: const Text('Roll'),
        )
      ],
    );
  }
}
