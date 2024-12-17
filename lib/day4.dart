import 'dart:math';

import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  final random = Random();
  double boxWidth = 100;
  double boxHeight = 100;
  Color boxcolour = Colors.deepPurpleAccent.shade400;
  BorderRadius _borderRadius = BorderRadius.circular(50);

  void changeBoxsize() {
    setState(() {
      boxWidth = random.nextInt(400).toDouble();
      boxHeight = random.nextInt(400).toDouble();
    });
  }

  void _changeBoxcolour() {
    setState(() {
      boxcolour = Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
    });
  }

  void _changeRadius() {
    setState(() {
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
            color: boxcolour,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: _changeBoxcolour, icon: Icon(Icons.pallet)),
          IconButton(onPressed: changeBoxsize, icon: Icon(Icons.aspect_ratio)),
          IconButton(onPressed: _changeRadius, icon: Icon(Icons.interests)),
        ],
      ),
    );
  }
}
