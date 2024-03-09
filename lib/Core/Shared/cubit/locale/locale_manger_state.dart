part of 'locale_manger_cubit.dart';

class LocaleMangerState {}

final class LocaleMangerInitialState extends LocaleMangerState {}

final class LocaleLoadingState extends LocaleMangerState {}

final class LocaleSuccesState extends LocaleMangerState {
  final Locale locale;

  LocaleSuccesState(this.locale);
}
