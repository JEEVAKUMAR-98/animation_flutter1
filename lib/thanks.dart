import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Thanks extends StatelessWidget {
  const Thanks({super.key});

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
                    child: Lottie.asset('assets/thanks.json'),
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
