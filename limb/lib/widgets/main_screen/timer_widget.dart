import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}
class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            'Время отдыха',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('images/timer.png'),
              const Text(
                '02:24:58',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(bottom: 25),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2:25:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Text(
                '+00:01:02',
                style: TextStyle(
                  color: Color(0xffD4FF78),
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
