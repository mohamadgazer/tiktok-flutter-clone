import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tiktok_flutter_clone/Features/camera/view/camera_view.dart';
import 'package:tiktok_flutter_clone/Features/edit%20user/view/edit_user_view.dart';
import 'package:tiktok_flutter_clone/Features/home/view/home_view.dart';
import 'package:tiktok_flutter_clone/Features/settings/view/settings_view.dart';
import 'package:tiktok_flutter_clone/Features/upload%20video/view/upload_video_view.dart';

part 'tabs_view_state.dart';

class TabsViewCubit extends Cubit<TabsViewState> {
  TabsViewCubit() : super(TabsViewInitial());
  List screens = [
    const HomeView(),
    const EditUserView(),
    const UploadVideoView(),
    const CameraView(),
    const SettingsView()
  ];
  int index = 0;
  set setIndex(int i) {
    emit(TabsChangedState());
    index = i;
  }

  int getIndex() {
    return index;
  }
}
