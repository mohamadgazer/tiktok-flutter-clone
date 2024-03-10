import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/Features/settings/widgets/custom_locale_card.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Text('This is the Settings Page'),
            SizedBox(
              height: 30,
            ),
            CustomLocaleCard(),
          ],
        ),
      ),
    );
  }
}
