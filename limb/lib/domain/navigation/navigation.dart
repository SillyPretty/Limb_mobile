import 'package:flutter/material.dart';

abstract class MainNavigationRouteName {
  static const start = '/';
  static const search = '/search';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.start;
  final routes = <String, Widget Function(BuildContext)>{
    // MainNavigationRouteName.start: (context) => const StartWidget(),
    // MainNavigationRouteName.search: (context) => const CardAnimeWidget(),
  };
}
