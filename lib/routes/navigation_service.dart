import 'package:flutter/material.dart';

class NavigationService {
  static final navKey = new GlobalKey<NavigatorState>();

  static void push(String routeName) {
    navKey.currentState.pushNamedAndRemoveUntil(routeName, (route) {
      return route.settings.name == routeName ? false : true;
    });
  }

  static void pop() {
    navKey.currentState.pop();
  }
}
