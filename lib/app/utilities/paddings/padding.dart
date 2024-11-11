import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class Padding {
  const Padding._();
  static final EdgeInsets p1a = EdgeInsets.all(1.h);
  static final EdgeInsets p4a = EdgeInsets.all(4.h);
  static final EdgeInsets p6a = EdgeInsets.all(6.h);
  static final EdgeInsets p7a = EdgeInsets.all(7.h);
  static final EdgeInsets p8a = EdgeInsets.all(8.h);
  static final EdgeInsets p10a = EdgeInsets.all(10.h);
  static final EdgeInsets p12a = EdgeInsets.all(12.h);
  static final EdgeInsets p16a = EdgeInsets.all(16.h);
  static final EdgeInsets p18a = EdgeInsets.all(18.h);
  static final EdgeInsets p20a = EdgeInsets.all(20.h);
  static final EdgeInsets p24a = EdgeInsets.all(24.h);
  static final EdgeInsets p30a = EdgeInsets.all(30.h);
  static final EdgeInsets p40a = EdgeInsets.all(40.h);
  static final EdgeInsets p60a = EdgeInsets.all(60.h);

  static final EdgeInsets p1v = EdgeInsets.symmetric(vertical: 1.h);
  static final EdgeInsets p4v = EdgeInsets.symmetric(vertical: 4.h);
  static final EdgeInsets p6v = EdgeInsets.symmetric(vertical: 6.h);
  static final EdgeInsets p8v = EdgeInsets.symmetric(vertical: 8.h);
  static final EdgeInsets p10v = EdgeInsets.symmetric(vertical: 10.h);
  static final EdgeInsets p12v = EdgeInsets.symmetric(vertical: 12.h);
  static final EdgeInsets p16v = EdgeInsets.symmetric(vertical: 16.h);
  static final EdgeInsets p20v = EdgeInsets.symmetric(vertical: 20.h);
  static final EdgeInsets p24v = EdgeInsets.symmetric(vertical: 24.h);
  static final EdgeInsets p32v = EdgeInsets.symmetric(vertical: 32.h);
  static final EdgeInsets p40v = EdgeInsets.symmetric(vertical: 40.h);
  static final EdgeInsets p60v = EdgeInsets.symmetric(vertical: 60.h);

  static final EdgeInsets p1h = EdgeInsets.symmetric(horizontal: 1.w);
  static final EdgeInsets p4h = EdgeInsets.symmetric(horizontal: 4.w);
  static final EdgeInsets p6h = EdgeInsets.symmetric(horizontal: 6.w);
  static final EdgeInsets p8h = EdgeInsets.symmetric(horizontal: 8.w);
  static final EdgeInsets p10h = EdgeInsets.symmetric(horizontal: 10.w);
  static final EdgeInsets p12h = EdgeInsets.symmetric(horizontal: 12.w);
  static final EdgeInsets p14h = EdgeInsets.symmetric(horizontal: 14.w);
  static final EdgeInsets p16h = EdgeInsets.symmetric(horizontal: 16.w);
  static final EdgeInsets p18h = EdgeInsets.symmetric(horizontal: 18.w);
  static final EdgeInsets p20h = EdgeInsets.symmetric(horizontal: 20.w);
  static final EdgeInsets p24h = EdgeInsets.symmetric(horizontal: 24.w);
  static final EdgeInsets p40h = EdgeInsets.symmetric(horizontal: 40.w);
  static final EdgeInsets p60h = EdgeInsets.symmetric(horizontal: 60.w);

  static final EdgeInsets p1t = EdgeInsets.only(top: 1.h);
  static final EdgeInsets p4t = EdgeInsets.only(top: 4.h);
  static final EdgeInsets p6t = EdgeInsets.only(top: 6.h);
  static final EdgeInsets p8t = EdgeInsets.only(top: 8.h);
  static final EdgeInsets p10t = EdgeInsets.only(top: 10.h);
  static final EdgeInsets p12t = EdgeInsets.only(top: 12.h);
  static final EdgeInsets p16t = EdgeInsets.only(top: 16.h);
  static final EdgeInsets p18t = EdgeInsets.only(top: 18.h);
  static final EdgeInsets p20t = EdgeInsets.only(top: 20.h);
  static final EdgeInsets p24t = EdgeInsets.only(top: 24.h);
  static final EdgeInsets p26t = EdgeInsets.only(top: 26.h);
  static final EdgeInsets p30t = EdgeInsets.only(top: 30.h);
  static final EdgeInsets p40t = EdgeInsets.only(top: 40.h);
  static final EdgeInsets p60t = EdgeInsets.only(top: 60.h);
  static final EdgeInsets p170t = EdgeInsets.only(top: 170.h);

  static final EdgeInsets p1b = EdgeInsets.only(bottom: 1.h);
  static final EdgeInsets p4b = EdgeInsets.only(bottom: 4.h);
  static final EdgeInsets p6b = EdgeInsets.only(bottom: 6.h);
  static final EdgeInsets p8b = EdgeInsets.only(bottom: 8.h);
  static final EdgeInsets p10b = EdgeInsets.only(bottom: 10.h);
  static final EdgeInsets p12b = EdgeInsets.only(bottom: 12.h);
  static final EdgeInsets p16b = EdgeInsets.only(bottom: 16.h);
  static final EdgeInsets p20b = EdgeInsets.only(bottom: 20.h);
  static final EdgeInsets p24b = EdgeInsets.only(bottom: 24.h);
  static final EdgeInsets p32b = EdgeInsets.only(bottom: 32.h);
  static final EdgeInsets p36b = EdgeInsets.only(bottom: 36.h);
  static final EdgeInsets p40b = EdgeInsets.only(bottom: 40.h);
  static final EdgeInsets p60b = EdgeInsets.only(bottom: 60.h);

  static final EdgeInsets p1l = EdgeInsets.only(left: 1.w);
  static final EdgeInsets p4l = EdgeInsets.only(left: 4.w);
  static final EdgeInsets p6l = EdgeInsets.only(left: 6.w);
  static final EdgeInsets p8l = EdgeInsets.only(left: 8.w);
  static final EdgeInsets p10l = EdgeInsets.only(left: 10.w);
  static final EdgeInsets p12l = EdgeInsets.only(left: 12.w);
  static final EdgeInsets p16l = EdgeInsets.only(left: 16.w);
  static final EdgeInsets p20l = EdgeInsets.only(left: 20.w);
  static final EdgeInsets p24l = EdgeInsets.only(left: 24.w);
  static final EdgeInsets p32l = EdgeInsets.only(left: 32.h);
  static final EdgeInsets p38l = EdgeInsets.only(left: 38.h);
  static final EdgeInsets p40l = EdgeInsets.only(left: 40.w);
  static final EdgeInsets p60l = EdgeInsets.only(left: 60.w);

  static final EdgeInsets p1r = EdgeInsets.only(right: 1.w);
  static final EdgeInsets p4r = EdgeInsets.only(right: 4.w);
  static final EdgeInsets p6r = EdgeInsets.only(right: 6.w);
  static final EdgeInsets p8r = EdgeInsets.only(right: 8.w);
  static final EdgeInsets p10r = EdgeInsets.only(right: 10.w);
  static final EdgeInsets p12r = EdgeInsets.only(right: 12.w);
  static final EdgeInsets p16r = EdgeInsets.only(right: 16.w);
  static final EdgeInsets p20r = EdgeInsets.only(right: 20.w);
  static final EdgeInsets p24r = EdgeInsets.only(right: 24.w);
  static final EdgeInsets p40r = EdgeInsets.only(right: 40.w);
  static final EdgeInsets p60r = EdgeInsets.only(right: 60.w);

  static final EdgeInsets p32t = EdgeInsets.only(top: 32.h);
  static final EdgeInsets p18r = EdgeInsets.only(right: 18.w);
}
