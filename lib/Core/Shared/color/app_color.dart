import 'package:flutter/material.dart';

class AppColorManger {
  static const Color tiktokDark = Color(0xff161722);
  static const Color tiktokLightBlue = Color(0xff65D2E9);
  static const Color tiktokPink = Color(0xffE6436D);
  static const Color white = Color(0xffFFFFFF);
  static const Color white2 = Color(0xffFBFBFB);
  static Color white60 = const Color.fromRGBO(255, 255, 255, 60);
  static Color white20 = const Color.fromRGBO(255, 255, 255, 20);
  static const Color lightGray2 = Color(0xffABABAB);
  static const Color black = Color(0xff000000);
  static const Color gray = Color(0xff86878B);

  static const Color darkGrey = Color(0xff171717);
  static const Color lightGrey = Color(0xff373736);

  static const LinearGradient liner = LinearGradient(
    colors: [
      white,
      white,
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const List<Color> tikTokDiskColors = [
    darkGrey,
    lightGrey,
    darkGrey,
    lightGrey,
  ];

  static const LinearGradient angularDiskGradient = LinearGradient(
    colors: tikTokDiskColors,
    stops: [0.0, 0.33, 0.66, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
