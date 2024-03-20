import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
import 'package:tiktok_flutter_clone/Core/Shared/icons/app_icon.dart';
import 'package:tiktok_flutter_clone/Core/Shared/image/app_image.dart';
import 'package:tiktok_flutter_clone/Core/Shared/style/app_text_style.dart';
import 'package:tiktok_flutter_clone/Core/helper/extentions.dart';
import 'package:tiktok_flutter_clone/Features/home/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(
          children: [
            ListView(
              children: [
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    final myCubit = BlocProvider.of<HomeCubit>(context);
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: const ButtonStyle(
                              splashFactory: NoSplash.splashFactory),
                          onPressed: () {
                            myCubit.switchToFollowing();
                            print(myCubit.isForYou);
                          },
                          child: Text(
                            "Following",
                            style: TextStyle(
                                color: myCubit.isForYou
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ),
                        TextButton(
                          style: const ButtonStyle(
                              splashFactory: NoSplash.splashFactory),
                          onPressed: () {
                            myCubit.switchToForYou();
                            print(myCubit.isForYou);
                          },
                          child: Text(
                            "For You",
                            style: TextStyle(
                                color: myCubit.isForYou
                                    ? Colors.grey
                                    : Colors.white),
                          ),
                        ),
                      ],
                    );
                  },
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
                        const Text(
                          "Share",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
