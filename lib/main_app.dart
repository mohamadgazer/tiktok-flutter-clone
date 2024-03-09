import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.genrateRoute,
    );
  }
}
