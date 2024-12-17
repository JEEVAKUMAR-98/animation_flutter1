import 'package:animations_applications/pages/page-2.dart';
import 'package:animations_applications/pages/page_1.dart';
import 'package:animations_applications/pages/page_3.dart';
import 'package:animations_applications/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Day6 extends StatelessWidget {
  Day6({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
                activeDotColor: Colors.purple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 20,
                dotWidth: 20,
                spacing: 10,
                verticalOffset: 40),
          )
        ],
      ),
    );
  }
}
