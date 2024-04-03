import 'package:flutter/material.dart';

class StudentWidget extends StatelessWidget {
  final String name;
  const StudentWidget({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/person_large.png',
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 170,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Лет: ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextSpan(
                          text: '12',
                          style: TextStyle(
                            color: Color(0xffD4FF78),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Класс: ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextSpan(
                          text: '6',
                          style: TextStyle(
                            color: Color(0xffD4FF78),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Родитель: ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextSpan(
                          text: 'Иванов',
                          style: TextStyle(
                            color: Color(0xffD4FF78),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Алексей',
                    style: TextStyle(
                      color: Color(0xffD4FF78),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            Text(
              'Предметы: ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            CardPredmetWidget(item: 'История'),
            CardPredmetWidget(item: 'Биология'),
            CardPredmetWidget(item: 'Математика'),
            CardPredmetWidget(item: 'Английский язык'),
            CardPredmetWidget(item: 'Физика'),
            CardPredmetWidget(item: 'Русский язык'),
            CardPredmetWidget(item: '+'),
          ],
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.white, fontSize: 20),
            children: [
              TextSpan(text: 'Моти'),
              TextSpan(
                text: 'Вашка - ваша ',
                style: TextStyle(
                  color: Color(0xffD4FF78),
                ),
              ),
              TextSpan(text: 'мотивация'),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20, top: 20, bottom: 40),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff2D256F).withOpacity(0.7),
                offset: const Offset(10, 8),
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
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: Wrap(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  children: [
                    TextSpan(text: 'Самое сложное в деле - это '),
                    TextSpan(
                      text: 'начать. ',
                      style: TextStyle(color: Color(0xffD4FF78)),
                    ),
                    TextSpan(
                        text:
                            'Как только ты начнёшь - половина дела будет уже '),
                    TextSpan(
                      text: 'сделана.',
                      style: TextStyle(color: Color(0xffD4FF78)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardPredmetWidget extends StatelessWidget {
  final String item;
  const CardPredmetWidget({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (item == '+') return;
        Navigator.of(context).pushNamed('theme_item', arguments: item);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 5, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              const Color(0xff7F78B7),
              const Color(0xff9F9BBC).withOpacity(0.9),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        child: Text(
          item,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
