import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Core/Localization/app_local.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/generated/l10n.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routing
      initialRoute: Routes.home,
      onGenerateRoute: appRouter.genrateRoute,
      // localiztion
      localizationsDelegates: localizationsDelegates,
      supportedLocales: S.delegate.supportedLocales,
      //deview preview
      builder: DevicePreview.appBuilder,
    );
  }
}
