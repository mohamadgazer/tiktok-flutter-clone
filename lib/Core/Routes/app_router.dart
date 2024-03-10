import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/Features/camera/view/camera_view.dart';
import 'package:tiktok_flutter_clone/Features/edit%20user/view/edit_user_view.dart';
import 'package:tiktok_flutter_clone/Features/home/view/home_view.dart';
import 'package:tiktok_flutter_clone/Features/settings/view/settings_view.dart';
import 'package:tiktok_flutter_clone/Features/upload%20video/view/upload_video_view.dart';
import 'package:tiktok_flutter_clone/Features/user/view/user_view.dart';

class AppRouter {
  Route genrateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      case Routes.camera:
        return MaterialPageRoute(
          builder: (context) => const CameraView(),
        );
      case Routes.userView:
        return MaterialPageRoute(
          builder: (context) => const UserView(),
        );
      case Routes.editUser:
        return MaterialPageRoute(
          builder: (context) => const EditUserView(),
        );
      case Routes.uploadVideo:
        return MaterialPageRoute(
          builder: (context) => const UploadVideoView(),
        );
      case Routes.settings:
        return MaterialPageRoute(
          builder: (context) => const SettingsView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No Route defined for ${routeSettings.name}"),
            ),
          ),
        );
    }
  }
}
