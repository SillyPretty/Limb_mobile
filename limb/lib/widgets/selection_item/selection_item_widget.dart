import 'package:flutter/material.dart';
import 'package:limb/widgets/common_widgets/botom_nav_bar_widget.dart';

class SelectionItemWidget extends StatefulWidget {
  const SelectionItemWidget({super.key});

  @override
  State<SelectionItemWidget> createState() => _SelectionItemWidgetState();
}

class _SelectionItemWidgetState extends State<SelectionItemWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(minutes: 1), () {
      Navigator.of(context).pushNamed('ask');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 1350,
                    margin:
                        const EdgeInsets.only(right: 65, bottom: 15, top: 20),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff918CB5),
                          Color(0xffBBB5EC),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'LIMB',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Image.asset('images/back.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('prime');
                        },
                        child: Image.asset('images/prime.png'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const BottomNavBarWidget(),
          ],
        ),
      ),
    );
  }
}
