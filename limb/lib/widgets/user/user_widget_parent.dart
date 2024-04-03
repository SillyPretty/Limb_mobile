import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserWidgetParent extends StatelessWidget {
  final String name;
  const UserWidgetParent({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    final dateNow = DateFormat('yyyy-MM-dd').format(DateTime.now());
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
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Класс ребёнка: ',
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
                          text: 'Ребёнок: ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextSpan(
                          text: 'Максим',
                          style: TextStyle(
                            color: Color(0xffD4FF78),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Зубарев',
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
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
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
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Успехи ребёнка',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  dateNow.toString(),
                  style: const TextStyle(
                    color: Color(0xffD4FF78),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 70,
                child: Scrollbar(
                  thickness: 8.0,
                  radius: Radius.circular(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ChildrenScrollViewWidget(
                          name: 'Математика - 14.20',
                          color: 0xff,
                        ),
                        ChildrenScrollViewWidget(
                          name: 'Биология - 12.00',
                          color: 0xffD4FF78,
                        ),
                        ChildrenScrollViewWidget(
                          name: 'Английский язык - 11.10',
                          color: 0xffffffff,
                        ),
                        ChildrenScrollViewWidget(
                          name: 'Физика - 10.00',
                          color: 0xffD4FF78,
                        ),
                        ChildrenScrollViewWidget(
                          name: 'Русский язык - 13.00',
                          color: 0xff,
                        ),
                        ChildrenScrollViewWidget(
                          name: 'История - 15.00',
                          color: 0xffD4FF78,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChildrenScrollViewWidget extends StatelessWidget {
  final String name;
  final int color;
  const ChildrenScrollViewWidget({
    required this.name,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Color(color),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
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
        margin: const EdgeInsets.only(right: 5, bottom: 20),
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
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
