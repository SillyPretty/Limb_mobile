import 'package:flutter/material.dart';

class PrimeWidget extends StatelessWidget {
  const PrimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/logo_mini.png',
                height: 140,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Доступные тарифы',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff7F78B7),
                    Color(0xff9F9BBC),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Тариф',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextSpan(
                            text: ' FREE',
                            style: TextStyle(
                                color: Color(0xffD4FF78), fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const PrimeTextWidget(
                    text: 'Доступ к основным предметам',
                  ),
                  const PrimeTextWidget2(
                    text: 'Дополнительные предметы',
                  ),
                  const PrimeTextWidget2(
                    text: 'Отсутствие рекламы',
                  ),
                  const PrimeTextWidget2(
                    text: 'Подготовка к ОГЭ/ЕГЭ',
                  ),
                  const PrimeTextWidget2(
                    text: 'Расширенный годовой отчёт',
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
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
                          'Остаться на тарифе',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff7F78B7),
                    Color(0xff9F9BBC),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Тариф',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextSpan(
                            text: ' PREMIUM',
                            style: TextStyle(
                                color: Color(0xffD4FF78), fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const PrimeTextWidget(
                    text: 'Доступ к основным предметам',
                  ),
                  const PrimeTextWidget(
                    text: 'Дополнительные предметы',
                  ),
                  const PrimeTextWidget(
                    text: 'Отсутствие рекламы',
                  ),
                  const PrimeTextWidget(
                    text: 'Подготовка к ОГЭ/ЕГЭ',
                  ),
                  const PrimeTextWidget(
                    text: 'Расширенный годовой отчёт',
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('payment');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
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
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Перейти на ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: 'PREMIUM',
                                style: TextStyle(
                                  color: Color(0xffD4FF78),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrimeTextWidget extends StatelessWidget {
  final String text;
  const PrimeTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            color: const Color(0xffD4FF78),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}

class PrimeTextWidget2 extends StatelessWidget {
  final String text;
  const PrimeTextWidget2({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.6))),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style:
                TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 15),
          )
        ],
      ),
    );
  }
}
