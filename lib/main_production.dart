import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';

import 'main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
