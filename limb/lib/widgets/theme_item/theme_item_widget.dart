import 'package:flutter/material.dart';
import 'package:limb/widgets/common_widgets/botom_nav_bar_widget.dart';

class ThemeItemWidget extends StatelessWidget {
  const ThemeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments ?? true;
    const textStyle = TextStyle(
      fontSize: 15,
      color: Colors.white,
    );
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
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  item.toString(),
                                  style: const TextStyle(
                                    fontSize: 36,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 60),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Темы для обучения:',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 20),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 26,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(
                                                    45, 37, 111, 0.40),
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
                                          child: const Column(
                                            children: [
                                              SizedBox(
                                                height: 290,
                                                child: Scrollbar(
                                                  thickness: 8.0,
                                                  radius: Radius.circular(10.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Глаголы',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        ThemesWidget(
                                                          num: '1. ',
                                                          textGreen:
                                                              'Переходные',
                                                          textWhite:
                                                              ' и непереходные глаголы.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '2. ',
                                                          textGreen:
                                                              'Возвратные',
                                                          textWhite:
                                                              ' глаголы.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '3. ',
                                                          textGreen:
                                                              'Изъявительное',
                                                          textWhite:
                                                              ' наклонение.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '4. ',
                                                          textGreen: 'Условное',
                                                          textWhite:
                                                              ' наклонение.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '5. ',
                                                          textGreen:
                                                              'Повелительное',
                                                          textWhite:
                                                              ' наклонение.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '6. ',
                                                          textGreen:
                                                              'Неопределенная',
                                                          textWhite:
                                                              ' форма глагола.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '7. ',
                                                          textGreen:
                                                              'Безличные',
                                                          textWhite: ' глаголы',
                                                        ),
                                                        ThemesWidget(
                                                          num: '8. ',
                                                          textGreen:
                                                              'Правописание',
                                                          textWhite:
                                                              ' гласных в суффиксах глаголов.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '9. ',
                                                          textGreen:
                                                              'Разноспрягаемые',
                                                          textWhite:
                                                              ' глаголы.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '10. ',
                                                          textGreen:
                                                              'Закрепление',
                                                          textWhite:
                                                              ' материала.',
                                                        ),
                                                        SizedBox(height: 10),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Словообразование и орфография',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        ThemesWidget(
                                                          num: '1. ',
                                                          textGreen:
                                                              'Основные способы',
                                                          textWhite:
                                                              ' образования слов.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '2. ',
                                                          textGreen:
                                                              'Буквы о и а в корнях',
                                                          textWhite:
                                                              '-кос- / -кас-; -гор- / - гар-;.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '3. ',
                                                          textGreen:
                                                              'Буквы ы, и',
                                                          textWhite:
                                                              '  после приставок..',
                                                        ),
                                                        ThemesWidget(
                                                          num: '4. ',
                                                          textGreen:
                                                              'Гласные в приставках',
                                                          textWhite:
                                                              ' пре- и при-.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '5. ',
                                                          textGreen:
                                                              ' Соединительные о и е',
                                                          textWhite:
                                                              ' в сложных словах.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '6. ',
                                                          textGreen:
                                                              'Сложносокращённые',
                                                          textWhite: ' слова.',
                                                        ),
                                                        ThemesWidget(
                                                          num: '7. ',
                                                          textGreen: '',
                                                          textWhite:
                                                              'Закрепление материала.',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    width: 140,
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                        dividerColor: Colors.transparent,
                                        unselectedWidgetColor: Colors.white,
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  45, 37, 111, 0.40),
                                              offset: Offset(4, 2),
                                              blurRadius: 10,
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
                                        child: ExpansionTile(
                                          title: const Text(
                                            '6 класс',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          children: <Widget>[
                                            ListView(
                                              shrinkWrap: true,
                                              children: <Widget>[
                                                ListTile(
                                                  title: const Text(
                                                    '5 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '6 класс',
                                                    style: TextStyle(
                                                      color: Color(0xffD4FF78),
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '7 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '8 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '9 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '10 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                                ListTile(
                                                  title: const Text(
                                                    '11 класс',
                                                    style: textStyle,
                                                  ),
                                                  onTap: () {},
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
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

class ThemesWidget extends StatefulWidget {
  final String num;
  final String textGreen;
  final String textWhite;
  const ThemesWidget({
    required this.num,
    required this.textGreen,
    required this.textWhite,
    super.key,
  });

  @override
  State<ThemesWidget> createState() => _ThemesWidgetState();
}

class _ThemesWidgetState extends State<ThemesWidget> {
  var visible = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        visible = !visible;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.num,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      TextSpan(
                        text: widget.textGreen,
                        style: const TextStyle(
                            color: Color(0xffD4FF78), fontSize: 12),
                      ),
                      TextSpan(
                        text: widget.textWhite,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Icon(
                  visible == false ? Icons.arrow_right : Icons.arrow_left,
                  color: Colors.white,
                )
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: visible == true ? 220 : 0,
              child: Text(
                'Глаголы, которые обозначают действие, переходящее на предмет, называются переходными. Все остальные глаголы являются непереходными.Переходные глаголы имеют (или могут иметь) при себе имя существительное или местоимение в винительном падеже без предлога: брал (что?) книгу (в.п.), встречать (кого?) его (в.п.)  При переходных глаголах существительное или местоимение может стоять и в родительном падеже: 1) при отрицании:не купил (чего?) хлеба (р.п.) 2) при указании на часть предмета:отрезал (чего?) сыру (р.п.), нарвать (чего?) цветов (р.п.)',
                style: TextStyle(
                  color: Colors.white.withOpacity(visible == true ? 1 : 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
