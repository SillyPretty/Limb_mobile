import 'package:flutter/material.dart';
import 'package:limb/widgets/main_screen/result_widget.dart';
import 'package:limb/widgets/main_screen/timer_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  bool sizeIcon1Large = true;
  bool sizeIcon2Large = true;
  var screen;
  double animWidth = 380;
  var index = 0;
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      screen = ModalRoute.of(context)?.settings.arguments ?? true;
      index++;
    }
    if (screen == false) {
      sizeIcon1Large = true;
      sizeIcon2Large = false;
    } else if (screen == true) {
      sizeIcon1Large = false;
      sizeIcon2Large = true;
    }
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: animWidth,
                margin: const EdgeInsets.only(
                  left: 20,
                  bottom: 120,
                  top: 25,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff918CB5),
                      Color(0xffBBB5EC),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(45, 37, 111, 0.40),
                            offset: Offset(0, 4),
                            blurRadius: 55,
                            spreadRadius: 0,
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff7F78B7),
                            Color(0xff9F9BBC),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          TextButton(
                            style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              children: [
                                Image.asset('images/arrow_back.png'),
                                const SizedBox(width: 10),
                                const Text(
                                  'Вернуться',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                            ),
                            child: TextButton(
                              style: const ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('user');
                              },
                              child: Image.asset(
                                'images/person.png',
                                height: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 540,
                      child: Visibility(
                        visible: _visible,
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              child: screen == null
                                  ? const SizedBox()
                                  : screen == true
                                      ? const ResultWidget()
                                      : const TimerWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 18),
                    width: double.infinity,
                    height: 83,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/back_bottom.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 28),
                        TextButton(
                          style: const ButtonStyle(
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                          ),
                          onPressed: () {
                            if (sizeIcon1Large != false) {
                              sizeIcon1Large = false;
                              sizeIcon2Large = true;
                              animWidth = 0;
                              _visible = false;
                              setState(() {});
                              Future.delayed(const Duration(seconds: 1), () {
                                screen = true;
                                animWidth = 380;
                                _visible = true;
                                setState(() {});
                              });
                            }
                          },
                          child: SizedBox(
                            width: 85,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimatedContainer(
                                  width: sizeIcon1Large == true ? 36 : 48,
                                  height: sizeIcon1Large == true ? 36 : 48,
                                  duration: const Duration(seconds: 1),
                                  child: Image.asset(
                                    'images/icon_result.png',
                                  ),
                                ),
                                AnimatedDefaultTextStyle(
                                    child: Text(
                                      'Результаты',
                                    ),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          sizeIcon1Large == false ? 0 : 15,
                                    ),
                                    duration: const Duration(seconds: 1))
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          style: const ButtonStyle(
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                          ),
                          onPressed: () {
                            if (sizeIcon2Large != false) {
                              sizeIcon2Large = false;
                              sizeIcon1Large = true;
                              animWidth = 0;
                              _visible = false;
                              setState(() {});
                              Future.delayed(const Duration(seconds: 1), () {
                                screen = false;
                                animWidth = 380;
                                _visible = true;
                                setState(() {});
                              });
                            }
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedContainer(
                                width: sizeIcon2Large == true ? 36 : 48,
                                height: sizeIcon2Large == true ? 36 : 48,
                                duration: const Duration(seconds: 1),
                                child: Image.asset(
                                  'images/icon_watch.png',
                                ),
                              ),
                              AnimatedDefaultTextStyle(
                                  child: Text(
                                    'Время',
                                  ),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: sizeIcon2Large == false ? 0 : 15,
                                  ),
                                  duration: const Duration(seconds: 1))
                            ],
                          ),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  clipBehavior: Clip.hardEdge,
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                    padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('selection');
                  },
                  child: Image.asset('images/timer_mini.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
