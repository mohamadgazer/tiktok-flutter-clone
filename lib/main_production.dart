import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/Shared/cubit/locale/locale_manger_cubit.dart';

import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(BlocProvider(
    create: (context) => LocaleMangerCubit()..getCacheLocale(),
    child: MainApp(
      appRouter: AppRouter(),
    ),
  ));
}
