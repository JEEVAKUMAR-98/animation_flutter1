import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
                color: Colors.brown[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                )),
            child: Swiper(
                layout: SwiperLayout.STACK,
                itemHeight: 280,
                itemWidth: 400,
                scrollDirection: Axis.vertical,
                duration: 500,
                loop: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ins$index.jpg'),
                            fit: BoxFit.cover)),
                  );
                },
                itemCount: 5),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Text(
          "S W I P E A N I M A T I O N",
          style: TextStyle(fontSize: 20),
        )
      ]),
    );
  }
}
