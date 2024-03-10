import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_flutter_clone/Core/Shared/color/app_color.dart';
import 'package:tiktok_flutter_clone/Core/Shared/font/app_font.dart';

class AppTextStyle {
// proxima

//semiblod
// =============================
// 10
  static TextStyle s10proximaBoldWhite =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 10.sp,
    color: AppColorManger.white,
  );
// ================================
//13
  static TextStyle s13proximaBoldWhiteDropShadow =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 13.sp,
    color: AppColorManger.white,
    shadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        offset: const Offset(2, 2),
        blurRadius: 3,
      ),
    ],
  );

  static TextStyle s13proximaBoldWhite60 =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 13.sp,
    color: AppColorManger.white60,
  );
  static TextStyle s13proximaBoldGray = AppFontManager.proximaSemibold.copyWith(
    fontSize: 13.sp,
    color: AppColorManger.gray,
  );
  static TextStyle s13proximaBoldBlack =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 13.sp,
    color: AppColorManger.black,
  );
  //================================================
  //15

  static TextStyle s15proximaBoldWhite60 =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 15.sp,
    color: AppColorManger.white60,
  );
  //=================================================
// 16
  static TextStyle s16proximaBoldWhite =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 16.sp,
    color: AppColorManger.white,
  );

  static TextStyle s16proximaBoldWhite60 =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 16.sp,
    color: AppColorManger.white60,
  );
// =================================================
  // 17

  static TextStyle s17proximaBoldWhite =
      AppFontManager.proximaSemibold.copyWith(
    fontSize: 17.sp,
    color: AppColorManger.white,
  );

// blod
// 11
  static TextStyle s11proximaBoldWhite = AppFontManager.proximaBold.copyWith(
    fontSize: 11.sp,
    color: AppColorManger.white,
  );

//=============================================================
// ***
  //sp pro
  static TextStyle s15sfProTextSemiboldBoldWhite60 =
      AppFontManager.sfProTextSemibold.copyWith(
    fontSize: 15.sp,
    color: AppColorManger.white60,
  );
}
