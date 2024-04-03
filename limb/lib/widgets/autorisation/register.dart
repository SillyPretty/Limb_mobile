import 'package:flutter/material.dart';
import 'package:limb/widgets/autorisation/login.dart';
import 'package:limb/widgets/start/start_widget.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

void updateData(String newData, String newName) {
  GlobalState.instance.name = newName;
  GlobalState.instance.data = newData;
}

var errorlogin = false;
var errorPassword = false;
final passwordTextController = TextEditingController();
final loginTextController = TextEditingController();
bool _obscureText = true;

class _RegisterWidgetState extends State<RegisterWidget> {
  var isChecked = true;
  var isChecked2 = false;

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      'Регистрация',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      controller: loginTextController,
                      decoration: InputDecoration(
                        filled: true,
                        errorText: errorlogin ? 'Пустой логин' : null,
                        errorBorder: OutlineInputBorder(
                          borderSide: errorlogin
                              ? const BorderSide(color: Colors.red, width: 2)
                              : const BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Иванов Иван',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      inputFormatters: [
                        PhoneInputFormatter(),
                      ],
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: passwordTextController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        errorText: errorPassword ? 'Пустой пароль' : null,
                        errorBorder: OutlineInputBorder(
                          borderSide: errorPassword
                              ? const BorderSide(color: Colors.red, width: 2)
                              : const BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Пароль',
                        hintStyle: TextStyle(
                          color: const Color(0xff7F78B7).withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          width: 146,
                          child: TextButton(
                            onPressed: () {
                              if (isChecked2 == true) {
                                isChecked2 = false;
                              }
                              isChecked = !isChecked;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                            ),
                            child: Row(
                              children: [
                                Checkbox(
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(
                                        width: 1.0, color: Colors.white),
                                  ),
                                  activeColor: const Color(0xFFD4FF78),
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      if (isChecked2 == true) {
                                        isChecked2 = false;
                                      }
                                      isChecked = value ?? false;
                                    });
                                  },
                                ),
                                const Text(
                                  'Родитель',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: 146,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (isChecked == true) {
                                  isChecked = false;
                                }
                                isChecked2 = !isChecked2;
                              });
                            },
                            style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                            ),
                            child: Row(
                              children: [
                                Checkbox(
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                  activeColor: const Color(0xFFD4FF78),
                                  value: isChecked2,
                                  onChanged: (value) {
                                    setState(() {
                                      if (isChecked == true) {
                                        isChecked = false;
                                      }
                                      isChecked2 = value ?? false;
                                    });
                                  },
                                ),
                                const Text(
                                  'Ученик',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                        } else if (passwordTextController.text == '') {
                          errorPassword = true;
                          setState(() {});
                          return;
                        }
                        if (isChecked == true) {
                          updateData('parent', loginTextController.text);
                        } else if (isChecked2 == true) {
                          updateData('student', loginTextController.text);
                        }
                        Navigator.of(context).pushReplacementNamed('selection');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
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
                          'Зарегистрироваться',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Если у вас уже есть аккаунт, вы можете',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('login');
                      },
                      child: const Text(
                        'войти',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
