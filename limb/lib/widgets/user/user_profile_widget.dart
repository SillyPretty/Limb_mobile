import 'package:flutter/material.dart';
import 'package:limb/widgets/common_widgets/botom_nav_bar_widget.dart';
import 'package:limb/widgets/start/start_widget.dart';
import 'package:limb/widgets/user/user_widget_parent.dart';
import 'package:limb/widgets/user/user_widget_student.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  var name = 'Ivan Ivanov';
  var type = 'student';
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    name = GlobalState.instance.name;
    type = GlobalState.instance.data;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: 380,
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
                                overlayColor: MaterialStatePropertyAll(
                                    Colors.transparent),
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
                                overlayColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                              ),
                              child: TextButton(
                                style: const ButtonStyle(
                                  overlayColor: MaterialStatePropertyAll(
                                      Colors.transparent),
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed('login');
                                },
                                child: Image.asset(
                                  'images/log_out_icon.png',
                                  height: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: type == 'parent'
                            ? UserWidgetParent(name: name)
                            : StudentWidget(name: name),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const BottomNavBarWidget(),
          ],
        ),
      ),
    );
  }
}
