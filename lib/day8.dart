import 'package:animations_applications/thanks.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Lottie.asset('assets/hello-1.json'),
                  ),
                ),
                SizedBox(
                  height: 230,
                ),
                Container(
                  child: SlideAction(
                    innerColor: Colors.green,
                    outerColor: Colors.green[300],
                    borderRadius: 30,
                    height: 70,
                    sliderButtonIcon: Icon(Icons.lock_open),
                    text: 'Slide to Unlock',
                    textColor: Colors.black,
                    onSubmit: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Thanks()));
                      return null;
                    },
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
