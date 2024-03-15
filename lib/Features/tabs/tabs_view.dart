import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Features/tabs/cubit_tabs/tabs_view_cubit.dart';

import '../../Core/Shared/widget/buttom_navigationbar.dart';

class TabsView extends StatelessWidget {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabsViewCubit(),
      child: BlocBuilder<TabsViewCubit, TabsViewState>(
        builder: (context, state) {
          return Scaffold(
              bottomNavigationBar: const TikTokBottomNavBar(),
              body: BlocProvider.of<TabsViewCubit>(context)
                  .screens[BlocProvider.of<TabsViewCubit>(context).getIndex()]);
        },
      ),
    );
  }
}
