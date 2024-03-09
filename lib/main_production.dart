import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/Shared/cubit/locale/locale_manger_cubit.dart';

import 'main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BlocProvider(
    create: (context) => LocaleMangerCubit()..getCacheLocale(),
    child: MainApp(
      appRouter: AppRouter(),
    ),
  ));
}
