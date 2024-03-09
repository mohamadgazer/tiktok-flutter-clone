import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/Shared/cubit/locale/locale_manger_cubit.dart';
import 'package:tiktok_flutter_clone/Core/helper/bloc_observer.dart';

import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // fix screen util issue with hideing text with .sh
  await ScreenUtil.ensureScreenSize();

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.amber,
  //   statusBarColor: Colors.red,
  // ));
  Bloc.observer = SimpleBlocObserver();
  runApp(
    BlocProvider(
      create: (context) => LocaleMangerCubit()..getCacheLocale(),
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MainApp(
          appRouter: AppRouter(),
        ), // Wrap your app
      ),
    ),
  );
}
