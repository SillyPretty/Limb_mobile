import 'dart:async';
import 'package:flutter/material.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({super.key});

  @override
  State<StartWidget> createState() => _StartWidgetState();
}

class GlobalState {
  String name = '';
  String data = '';
  static final GlobalState instance = GlobalState();
}

var index = 0;

class _StartWidgetState extends State<StartWidget> {
  late Timer timer;
  var trueorfalse1 = false;
  var trueorfalse2 = false;
  var trueorfalse3 = false;
  var trueorfalse4 = false;
  var trueorfalse5 = false;
  var trueorfalse6 = false;
  @override
  void initState() {
    super.initState();
    variabled();
  }

  void variabled() async {
    timer = Timer.periodic(const Duration(milliseconds: 300), (Timer t) {
      setState(() {
        switch (index) {
          case 1:
            trueorfalse1 = true;
            break;
          case 2:
            trueorfalse2 = true;
            break;
          case 3:
            trueorfalse3 = true;
            break;
          case 4:
            trueorfalse4 = true;
            break;
          case 5:
            trueorfalse5 = true;
            break;
          case 6:
            trueorfalse6 = true;
            break;
          case 10:
            Navigator.of(context).pushReplacementNamed('login');
        }
      });
      index++;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final Size screenSize = MediaQuery.of(context).size;
      // final double screenWidth = screenSize.width;
      controller.jumpTo(192);
    });

    return Scaffold(
      backgroundColor: const Color(0xFF3B3D60),
      body: Container(
        padding: EdgeInsets.zero,
        child: SingleChildScrollView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 750,
                minHeight: 750,
              ),
              child: Center(
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: trueorfalse5 == false ? 690 : 690,
                          height: trueorfalse5 == false ? 690 : 690,
                          decoration: BoxDecoration(
                            color: const Color(0xFF50527E),
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: trueorfalse4 == false ? 647 : 667,
                          height: trueorfalse4 == false ? 647 : 667,
                          decoration: BoxDecoration(
                            color: const Color(0xFF585A8A),
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: trueorfalse3 == false ? 543 : 563,
                          height: trueorfalse3 == false ? 543 : 563,
                          decoration: BoxDecoration(
                            color: const Color(0xFF66699A),
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: trueorfalse2 == false ? 442 : 462,
                          height: trueorfalse2 == false ? 442 : 462,
                          decoration: BoxDecoration(
                            color: const Color(0xFF7A7CAC),
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: trueorfalse1 == false ? 341 : 361,
                          height: trueorfalse1 == false ? 341 : 361,
                          decoration: BoxDecoration(
                            color: const Color(0xFF8C8EB7),
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 90),
                              Image.asset(
                                'images/logo.png',
                                width: 287,
                                height: 287,
                              ),
                              const Text(
                                'LIMB',
                                style: TextStyle(
                                    fontSize: 82, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3B3D60)
                                .withOpacity(trueorfalse6 == false ? 0 : 1),
                            borderRadius: BorderRadius.circular(800),
                          ),
                          width: trueorfalse6 == false ? 0 : 690,
                          height: trueorfalse6 == false ? 0 : 690,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundWidget extends StatelessWidget {
  final bool trueorfalse;
  final double widthSize;
  final double heightSize;
  final int color;
  const RoundWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
    required this.color,
    required this.trueorfalse,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: index == 6
          ? 0
          : trueorfalse == true
              ? widthSize
              : widthSize - 20,
      height: index == 6
          ? 0
          : trueorfalse == true
              ? heightSize
              : heightSize - 20,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(800),
      ),
    );
  }
}
