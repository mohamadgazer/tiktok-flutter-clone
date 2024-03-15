import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/Core/Shared/icons/app_icon.dart';
import 'package:tiktok_flutter_clone/Core/Shared/image/app_image.dart';
import 'package:tiktok_flutter_clone/Core/helper/extentions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImageManger.logo,
              width: 100,
            ),
            SvgPicture.asset(
              AppIconManger.beauty,
              color: Colors.amber,
            ),
            const Text('This is the Home Page'),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(Routes.settings);
                },
                child: const Text("go to settings +++"))
          ],
        ),
      ),
      bottomNavigationBar: ,
    );
  }
}
