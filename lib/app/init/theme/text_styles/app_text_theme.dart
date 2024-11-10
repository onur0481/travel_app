import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/utilities/constant/app_constants.dart';

final class AppTextTheme {
  /// MARK: [Default]
  /// [Headings]
  TextStyle get heading1ExtraBlack => _generateTextStyle(fontSize: 34.sp, fontWeight: FontWeight.w800);
  TextStyle get heading1Bold => _generateTextStyle(fontSize: 34.sp, fontWeight: FontWeight.w700);
  TextStyle get heading1SemiBold => _generateTextStyle(fontSize: 34.sp, fontWeight: FontWeight.w600);
  TextStyle get heading1Medium => _generateTextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500);
  TextStyle get heading1Regular => _generateTextStyle(fontSize: 34.sp, fontWeight: FontWeight.w400);
  TextStyle get heading2ExtraBlack => _generateTextStyle(fontSize: 26.sp, fontWeight: FontWeight.w800);
  TextStyle get heading2Bold => _generateTextStyle(fontSize: 26.sp, fontWeight: FontWeight.w700);
  TextStyle get heading2SemiBold => _generateTextStyle(fontSize: 26.sp, fontWeight: FontWeight.w600);
  TextStyle get heading2Medium => _generateTextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500);
  TextStyle get heading2Regular => _generateTextStyle(fontSize: 26.sp, fontWeight: FontWeight.w400);
  TextStyle get heading3ExtraBlack => _generateTextStyle(fontSize: 22.sp, fontWeight: FontWeight.w800);
  TextStyle get heading3Bold => _generateTextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700);
  TextStyle get heading3SemiBold => _generateTextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600);
  TextStyle get heading3Medium => _generateTextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500);
  TextStyle get heading3Regular => _generateTextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400);
  TextStyle get heading4ExtraBlack => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800);
  TextStyle get heading4Bold => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700);
  TextStyle get heading4SemiBold => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600);
  TextStyle get heading4Medium => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  TextStyle get heading4Regular => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);
  TextStyle get heading5ExtraBlack => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w800);
  TextStyle get heading5Bold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);
  TextStyle get heading5SemiBold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
  TextStyle get heading5Medium => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
  TextStyle get heading5Regular => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);

  /// [Paragraphy]
  TextStyle get paragraphy1Bold => _generateTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700);
  TextStyle get paragraphy1SemiBold => _generateTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
  TextStyle get paragraphy1Regular => _generateTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400);
  TextStyle get paragraphy1Light => _generateTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w300);
  TextStyle get paragraphy2Bold => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700);
  TextStyle get paragraphy2SemiBold => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600);
  TextStyle get paragraphy2Regular => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);
  TextStyle get paragraphy2Light => _generateTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300);
  TextStyle get paragraphy3Bold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);
  TextStyle get paragraphy3SemiBold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
  TextStyle get paragraphy3Regular => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);
  TextStyle get paragraphy3Light => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300);
  TextStyle get paragraphy4Medium => _generateTextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500);

  /// [Label]
  TextStyle get label1Bold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);
  TextStyle get label1SemiBold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
  TextStyle get label1Regular => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);
  TextStyle get label1Light => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300);
  TextStyle get label2Bold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700);
  TextStyle get label2SemiBold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600);
  TextStyle get label2Medium => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  TextStyle get label2Regular => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  TextStyle get label2Light => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300);
  TextStyle get label3Bold => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700);
  TextStyle get label3SemiBold => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600);
  TextStyle get label3Regular => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400);
  TextStyle get label3Light => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w300);

  /// [Button]
  TextStyle get button1Bold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);
  TextStyle get button1SemiBold => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600);
  TextStyle get button1Regular => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400);
  TextStyle get button1Light => _generateTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300);
  TextStyle get button2Bold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700);
  TextStyle get button2SemiBold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600);
  TextStyle get button2Medium => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  TextStyle get button2Regular => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  TextStyle get button2Light => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300);
  TextStyle get button3Bold => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700);
  TextStyle get button3SemiBold => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600);
  TextStyle get button3Regular => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400);
  TextStyle get button3Light => _generateTextStyle(fontSize: 10.sp, fontWeight: FontWeight.w300);
  TextStyle get button4Bold => _generateTextStyle(fontSize: 9.sp, fontWeight: FontWeight.w700);
  TextStyle get button4SemiBold => _generateTextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600);
  TextStyle get button4Regular => _generateTextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400);

  /// [Chips]
  TextStyle get chips1Bold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700);
  TextStyle get chips1SemiBold => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600);
  TextStyle get chips1SemiMedium => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  TextStyle get chips1Regular => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  TextStyle get chips1Light => _generateTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300);

  TextStyle _generateTextStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(fontSize: fontSize, fontFamily: AppConstants.fontName, fontWeight: fontWeight);
  }
}
