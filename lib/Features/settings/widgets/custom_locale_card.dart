import 'package:flutter/material.dart';

import 'custom_locale_drop_down.dart';
import 'row_setting_data.dart';

class CustomLocaleCard extends StatelessWidget {
  const CustomLocaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: avoid_unnecessary_containers
      child: Container(
        // color: Colors.amber,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              RowSettingData(
                text: "select language",
              ),
              CustomLocaleDropDown(),
              SizedBox(height: 16),
              // CustomThemeSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
