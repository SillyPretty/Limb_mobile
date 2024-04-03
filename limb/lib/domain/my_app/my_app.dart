import 'package:flutter/material.dart';
import 'package:limb/widgets/ask/ask_widget.dart';
import 'package:limb/widgets/autorisation/register.dart';
import 'package:limb/widgets/autorisation/login.dart';
import 'package:limb/widgets/main_screen/timer_widget.dart';
import 'package:limb/widgets/prime/payment_widget.dart';
import 'package:limb/widgets/prime/prime_widget.dart';
import 'package:limb/widgets/prime/successful_payment_widget.dart';
import 'package:limb/widgets/selection_item/selection_item_widget.dart';
import 'package:limb/widgets/start/start_widget.dart';
import 'package:limb/widgets/main_screen/main_screen_widget.dart';
import 'package:limb/widgets/theme_item/theme_item_widget.dart';
import 'package:limb/widgets/user/user_profile_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'KellySlab',
      ),
      title: 'Limb',
      routes: {
        '/': (context) => const StartWidget(),
        'main': (context) => const MainScreenWidget(),
        'login': (context) => const LoginWidget(),
        'register': (context) => const RegisterWidget(),
        'timer': (context) => const TimerWidget(),
        'user': (context) => const UserProfileWidget(),
        'theme_item': (context) => const ThemeItemWidget(),
        'selection': (context) => const SelectionItemWidget(),
        'prime': (context) => const PrimeWidget(),
        'payment': (context) => const PaymentWidget(),
        'successful': (context) => const SuccessfulPaymentWidget(),
        'ask': (context) => const AskQuation(),
      },
      initialRoute: '/',
    );
  }
}
