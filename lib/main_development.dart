import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/helper/bloc_observer.dart';

import 'main_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber,
    statusBarColor: Colors.red,
  ));
  Bloc.observer = SimpleBlocObserver();
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
