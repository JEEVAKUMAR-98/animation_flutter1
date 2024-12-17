import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Day9 extends StatefulWidget {
  const Day9({super.key});

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: AvatarGlow(
          glowRadiusFactor: 3,
          glowColor: Colors.yellowAccent,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 70,
          ),
        ),
      ),
    );
  }
}
