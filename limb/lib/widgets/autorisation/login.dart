import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:limb/widgets/start/start_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  void updateData() {
    GlobalState.instance.name = 'Иванов Иван';
    GlobalState.instance.data = 'parent';
  }

  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  var errorlogin = false;
  var errorPassword = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/altern_logo.png'),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      'Вход',
                      style: TextStyle(
                        fontFamily: 'KellySlab',
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      inputFormatters: [
                        PhoneInputFormatter(),
                      ],
                      controller: loginTextController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: const OutlineInputBorder(),
                        errorText: errorlogin ? 'Неправильный логин' : null,
                        errorBorder: OutlineInputBorder(
                          borderSide: errorlogin
                              ? const BorderSide(color: Colors.red, width: 2.0)
                              : const BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixText: '+7 ',
                        prefixStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        hintText: '999 999 99 99',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: passwordTextController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: const OutlineInputBorder(),
                        errorText: errorPassword ? 'Пустой пароль' : null,
                        errorBorder: OutlineInputBorder(
                          borderSide: errorPassword
                              ? const BorderSide(color: Colors.red, width: 2.0)
                              : const BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Пароль',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        errorPassword = false;
                        errorlogin = false;
                        setState(() {});
                        if (loginTextController.text == '' ||
                            loginTextController.text.length != 13) {
                          errorlogin = true;
                          setState(() {});
                          return;
                        }
                        if (passwordTextController.text == '') {
                          errorPassword = true;
                          setState(() {});
                          return;
                        }
                        updateData();
                        Navigator.of(context).pushReplacementNamed('selection');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 92,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff7F78B7).withOpacity(0.5),
                              const Color(0xff8680B8),
                              const Color(0xff9F9BBC),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.centerLeft,
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
                          'Войти',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 120),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'У вас нет аккаунта?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('register');
                    },
                    child: const Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');

    final initialSpeshialSimbolCount = newValue.selection
        .textBefore(newValue.text)
        .replaceAll(RegExp(r'[\d]+'), '')
        .length;

    final cursorPosition =
        newValue.selection.start - initialSpeshialSimbolCount;
    var finalCursorPosition = cursorPosition;
    final digitOnlyChars = digitsOnly.split('');

    if (oldValue.selection.textInside(oldValue.text) == ' ') {
      digitOnlyChars.removeAt(cursorPosition - 1);
      finalCursorPosition -= 2;
    }

    var newString = <String>[];
    for (var i = 0; i < digitOnlyChars.length; i++) {
      if (i == 3 || i == 6 || i == 8) {
        newString.add(' ');
        newString.add(digitOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 1;
      } else {
        newString.add(digitOnlyChars[i]);
      }
    }
    final resultString = newString.join('');
    return TextEditingValue(
      text: resultString,
      selection: TextSelection.collapsed(offset: finalCursorPosition),
    );
  }
}
