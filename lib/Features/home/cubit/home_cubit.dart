import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool isForYou = false;
  switchToFollowing() {
    isForYou = true;
    emit(SwitchTap());
  }

  switchToForYou() {
    isForYou = false;
    emit(SwitchTap());
  }
}
