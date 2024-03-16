import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/Core/Shared/icons/app_icon.dart';
import 'package:tiktok_flutter_clone/Core/Shared/image/app_image.dart';
import 'package:tiktok_flutter_clone/Core/helper/extentions.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Following"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("For You"),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 70.h,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIconManger.heartIcon,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIconManger.share,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      const Text("Share")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
