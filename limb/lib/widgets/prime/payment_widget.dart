import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              const SizedBox(height: 90),
              const Text(
                'Оплата тарифа',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('images/mir.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Номер карты',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: '00000000000',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              const Text(
                                'Имя владельца карты',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  filled: true,
                                  fillColor:
                                      const Color(0xffFFFFFF).withOpacity(0.5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'IVANOV IVAN',
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7F78B7)
                                        .withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          child: Column(
                            children: [
                              const Text(
                                'Срок действия',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        filled: true,
                                        fillColor: const Color(0xffFFFFFF)
                                            .withOpacity(0.5),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: '00',
                                        hintStyle: TextStyle(
                                          color: const Color(0xff7F78B7)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    width: 50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        filled: true,
                                        fillColor: const Color(0xffFFFFFF)
                                            .withOpacity(0.5),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: '00',
                                        hintStyle: TextStyle(
                                          color: const Color(0xff7F78B7)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 20),
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
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 40,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'CVV2/CVC2 - это последние 3 цифры на обратной стороне карточки.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'CVV2/CVC2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  width: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10),
                                      filled: true,
                                      fillColor: const Color(0xffFFFFFF)
                                          .withOpacity(0.5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: '000',
                                      hintStyle: TextStyle(
                                        color: const Color(0xff7F78B7)
                                            .withOpacity(0.5),
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
                  ],
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('successful');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
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
                    'Оплатить',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
