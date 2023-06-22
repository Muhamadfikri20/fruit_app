import 'package:flutter/material.dart';

class FruitChange extends StatefulWidget {
  const FruitChange({super.key});

  @override
  State<FruitChange> createState() => _FruitChangeState();
}

class _FruitChangeState extends State<FruitChange> {
  var activeFruitImage = 'assets/images/fruit-1.png';

  void rollDice() {
    setState(() {
      activeFruitImage = 'assets/images/fruit-4.png';
      print('Changing image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeFruitImage,
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
