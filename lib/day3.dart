// ignore_for_file: deprecated_member_use

import 'package:animations_applications/models/nav_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  List<SMIBool> riveiconInputs = [];
  List<StateMachineController?> controllers = [];
  int selectedNavIndex = 0;
  List<String> pages = ["Chat", "Search", "History", "Notification", "Profile"];

  void animateTheIcon(int index) {
    riveiconInputs[index].change(true);
    Future.delayed(const Duration(seconds: 1), () {
      riveiconInputs[index].change(false);
    });
  }

  void riveOnInit(Artboard artboard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);

    if (controller != null) {
      artboard.addController(controller);
      controllers.add(controller);

      riveiconInputs.add(controller.findInput<bool>('active') as SMIBool);
    }
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pages[selectedNavIndex]),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.8),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.3),
                  offset: const Offset(0, 20),
                  blurRadius: 20,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(bottomNavItems.length, (index) {
                final riveIcon = bottomNavItems[index].rive;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      animateTheIcon(index);
                      setState(() {
                        selectedNavIndex = index;
                      });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Animatedbar(
                            isActive: selectedNavIndex == index,
                          ),
                          SizedBox(
                            height: 36,
                            width: 36,
                            child: RiveAnimation.asset(
                              riveIcon.src,
                              artboard: riveIcon.artboard,
                              onInit: (artboard) {
                                riveOnInit(
                                  artboard,
                                  stateMachineName: riveIcon.StateMachineName,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class Animatedbar extends StatelessWidget {
  final bool isActive;

  const Animatedbar({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
