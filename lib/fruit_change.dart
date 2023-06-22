import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class FruitChange extends StatefulWidget {
  const FruitChange({super.key});

  @override
  State<FruitChange> createState() => _FruitChangeState();
}

class _FruitChangeState extends State<FruitChange> {
  var currentFruitChange = 2;

  void rollDice() {
    setState(() {
      currentFruitChange = randomizer.nextInt(4) + 1;
      print('Changing image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/fruit-$currentFruitChange.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text('Change Fruit'),
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
        )
      ],
    );
  }
}
