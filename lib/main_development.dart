import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';

import 'main_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber,
    statusBarColor: Colors.red,
  ));
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
