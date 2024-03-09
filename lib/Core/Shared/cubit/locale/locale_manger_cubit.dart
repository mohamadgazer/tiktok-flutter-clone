import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Core/Shared/class/local_cashe_helper.dart';

part 'locale_manger_state.dart';

class LocaleMangerCubit extends Cubit<LocaleMangerState> {
  LocaleMangerCubit() : super(LocaleSuccesState(const Locale("ar")));

  Future<void> getCacheLocale() async {
    emit(LocaleLoadingState());
    final cacheHelper = await CacheHelper().getLocale();

    emit(LocaleSuccesState(Locale(cacheHelper)));
  }

  Future<void> setCachLocal(String val) async {
    emit(LocaleLoadingState());
    await CacheHelper().cacheLocale(val);
    emit(LocaleSuccesState(Locale(val)));
  }
}
