import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Результаты',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(45, 37, 111, 0.70),
                      offset: Offset(10, 8),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff7F78B7),
                      const Color(0xff7E78A9).withOpacity(1),
                      const Color(0xffffffff).withOpacity(0.35),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 20,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Еженедельные отчеты:',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '24',
                            style: TextStyle(
                              color: Color(0xffD4FF78),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: '/26',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(45, 37, 111, 0.70),
                      offset: Offset(10, 8),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff7F78B7),
                      const Color(0xff7E78A9).withOpacity(1),
                      const Color(0xffffffff).withOpacity(0.35),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 30,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Ежемесячные отчеты:',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '71',
                            style: TextStyle(
                              color: Color(0xffD4FF78),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: '/112',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('prime');
                },
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(45, 37, 111, 0.70),
                        offset: Offset(10, 8),
                        blurRadius: 20,
                        spreadRadius: 0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff7F78B7),
                        const Color(0xff7E78A9).withOpacity(1),
                        const Color(0xffffffff).withOpacity(0.35),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'images/key_icon.png',
                              height: 70,
                            ),
                            const Text(
                              'Ежегодные отчеты:',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'нет данных',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Доступно пользователям с премиум-версией',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xffD4FF78),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          )
        ],
      ),
    );
  }
}
