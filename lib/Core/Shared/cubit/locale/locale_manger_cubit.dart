import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Core/Shared/class/Local_cashe_helper.dart';

part 'locale_manger_state.dart';

class LocaleMangerCubit extends Cubit<LocaleMangerState> {
  LocaleMangerCubit() : super(LocaleMangerState(const Locale("ar")));

  Future<void> getCacheLocale() async {
    final cacheHelper = await CacheHelper().getLocale();

    emit(LocaleMangerState(Locale(cacheHelper)));
  }

  Future<void> setCachLocal(String val) async {
    await CacheHelper().cacheLocale(val);
    emit(LocaleMangerState(Locale(val)));
  }
}
