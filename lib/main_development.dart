import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber,
    statusBarColor: Colors.red,
  ));
  runApp(const MainApp());
}
