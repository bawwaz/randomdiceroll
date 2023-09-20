import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startalig = Alignment.topCenter;
const endalig = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors, // Remove square brackets here
          begin: startalig,
          end: endalig,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
