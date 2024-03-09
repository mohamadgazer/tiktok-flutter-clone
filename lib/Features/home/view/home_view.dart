import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Core/Routes/routes.dart';
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
            const Text('This is the Home Page'),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(Routes.settings);
                },
                child: const Text("go to settings"))
          ],
        ),
      ),
    );
  }
}
