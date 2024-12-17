import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Image.asset(
                "images/2147781756.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
