// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Widget widget;
  double high;
  double width;
  CustomButton({
    super.key,
    required this.widget,
    required this.high,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Add your button onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width, high),
          elevation: 0,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.black54)),
        ),
        child: widget);
  }
}
