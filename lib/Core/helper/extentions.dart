import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  void pushNamedAndRemoveUntil(String newRouteName, {Object? arguments}) {
    Navigator.of(this).pushNamedAndRemoveUntil(
        newRouteName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
