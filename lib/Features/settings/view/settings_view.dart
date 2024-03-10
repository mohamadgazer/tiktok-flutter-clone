import 'package:flutter/material.dart';
import 'package:tiktok_flutter_clone/generated/l10n.dart';

import '../widgets/settings_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings_page),
      ),
      body: const SettingsBody(),
    );
  }
}
