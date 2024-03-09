import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_flutter_clone/Core/Localization/app_local.dart';
import 'package:tiktok_flutter_clone/Core/Routes/app_router.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/Core/Shared/cubit/locale/locale_manger_cubit.dart';
import 'package:tiktok_flutter_clone/generated/l10n.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleMangerCubit, LocaleMangerState>(
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(414, 896),
          minTextAdapt: true,
          child: MaterialApp(
            //routing
            initialRoute: Routes.home,
            onGenerateRoute: appRouter.genrateRoute,
            // localiztion
            localizationsDelegates: localizationsDelegates,
            supportedLocales: S.delegate.supportedLocales,

            locale: (state is LocaleSuccesState)
                ? state.locale
                : const Locale("en"),
            //deview preview
            builder: DevicePreview.appBuilder,
          ),
        );
      },
    );
  }
}
