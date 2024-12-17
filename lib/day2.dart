import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: Center(
                    child: Lottie.asset('assets/loading-1.json'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
