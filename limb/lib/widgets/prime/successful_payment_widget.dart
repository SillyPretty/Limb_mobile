import 'package:flutter/material.dart';

class SuccessfulPaymentWidget extends StatelessWidget {
  const SuccessfulPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xff3B3D60),
              Color(0xff3B3D60),
              Color(0xff3B3D60),
              Color(0xff43436A),
              Color(0xff4D4D77),
              Color(0xff555381),
              Color(0xff5D5A8B),
              Color(0xff646195),
              Color(0xff6C679E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/logo_mini.png',
                height: 140,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Спасибо за покупку!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('selection');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff7F78B7),
                          Color(0xff9F9BBC),
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(45, 37, 111, 0.50),
                          offset: Offset(4, 2),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Text(
                      'Вернуться на главную',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
