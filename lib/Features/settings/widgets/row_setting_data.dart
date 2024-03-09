import 'package:flutter/material.dart';

class RowSettingData extends StatelessWidget {
  final String text;
  const RowSettingData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              text,
            ),
          ],
        )
      ],
    );
  }
}
