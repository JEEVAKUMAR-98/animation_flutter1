import 'package:animations_applications/animation1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Animations());
}

class Animations extends StatefulWidget {
  const Animations({super.key});

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animation1(),
    );
  }
}
