import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, top: 25),
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
                      const arg = true;
                      Navigator.of(context).pushNamed('main', arguments: arg);
                    },
                    child: SizedBox(
                      width: 85,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AnimatedContainer(
                            width: 36,
                            height: 36,
                            duration: const Duration(seconds: 1),
                            child: Image.asset(
                              'images/icon_result.png',
                            ),
                          ),
                          const Text(
                            'Результаты',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )
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
                      const arg = false;
                      Navigator.of(context).pushNamed('main', arguments: arg);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(
                          width: 36,
                          height: 36,
                          duration: const Duration(seconds: 1),
                          child: Image.asset(
                            'images/icon_watch.png',
                          ),
                        ),
                        const Text(
                          'Время',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
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
            onPressed: () {},
            child: Image.asset(
              'images/timer_mini.png',
              width: 88,
              height: 88,
            ),
          ),
        ],
      ),
    );
  }
}

class TornadoAnimation extends StatefulWidget {
  @override
  _TornadoAnimationState createState() => _TornadoAnimationState();
}

class _TornadoAnimationState extends State<TornadoAnimation>
    with SingleTickerProviderStateMixin {
  var _animationController;
  var _rotationAnimation;

  @override
  void initState() {
    super.initState();
    print('1');
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);

    _animationController.repeat();
  }

  @override
  void dispose() {
    print('2');
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _rotationAnimation,
        builder: (context, child) {
          return Transform.rotate(
            angle: _rotationAnimation.value * 1 * 6.14,
            child: child,
          );
        },
        child: Container(
          width: 390,
          height: 390,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/main.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
