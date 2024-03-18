import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_flutter_clone/Core/Shared/icons/app_icon.dart';
import 'package:tiktok_flutter_clone/Features/tabs/cubit_tabs/tabs_view_cubit.dart';
import 'package:tiktok_flutter_clone/generated/l10n.dart';

class TikTokBottomNavBar extends StatelessWidget {
  const TikTokBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabsViewCubit, TabsViewState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: BlocProvider.of<TabsViewCubit>(context).index,
          onTap: (index) {
            BlocProvider.of<TabsViewCubit>(context).setIndex = index;
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIconManger.home),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIconManger.search),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIconManger.plus,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 30.h,
                AppIconManger.messagesInMessageIcon,
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 30.h,
                AppIconManger.account,
              ),
              label: 'Me',
            ),
          ],
        );
      },
    );
  }
}
