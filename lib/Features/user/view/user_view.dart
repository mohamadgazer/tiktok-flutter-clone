import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_flutter_clone/Core/Shared/icons/app_icon.dart';
import 'package:tiktok_flutter_clone/Core/Shared/style/app_text_style.dart';
import 'package:tiktok_flutter_clone/Features/settings/view/settings_view.dart';
import 'package:tiktok_flutter_clone/Features/user/view/widgets/button.dart';

class UserView extends StatelessWidget {
  const UserView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                AppIconManger.bubble,
                height: 120,
              )),
          Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130.w,
                  ),
                  const Text(
                    'Account Name',
                  ),
                  SizedBox(
                    width: 110.w,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsView(),
                        )),
                    child: SvgPicture.asset(
                      AppIconManger.menuIcon,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
              const Divider(
                thickness: .5,
              ),
              SizedBox(height: 15.0.h),
              const CircleAvatar(
                radius: 50.0,
              ),
              SizedBox(height: 15.0.h),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '14',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Following',
                      ),
                    ],
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      Text(
                        '38',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Followers',
                      ),
                    ],
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      Text(
                        '91',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Likes',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    widget: const Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black), // Adjust text style as needed
                    ),
                    high: 50.h,
                    width: 200.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomButton(
                    widget: SvgPicture.asset(
                      AppIconManger.bookmark,
                      width: 100,
                    ),
                    high: 50.h,
                    width: 40.w,
                  ),
                ],
              ),
              const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Tap to add bio'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(AppIconManger.tabsIcon),
                    SvgPicture.asset(
                      AppIconManger.heartHideStrokeIcon,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
