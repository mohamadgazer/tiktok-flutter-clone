part of 'tabs_view_cubit.dart';

@immutable
sealed class TabsViewState {}

final class TabsViewInitial extends TabsViewState {}

final class TabsChangedState extends TabsViewState {}
