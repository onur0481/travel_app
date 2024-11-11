import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class Spaces {
  static const double _little = 6.0;
  static const double _tinySize = 12.0;
  static const double _smallSize = 16.0;
  static const double _mediumSize = 24.0;
  static const double _largeSize = 48.0;
  static const double _massiveSize = 96.0;

  /// 6.0 double horizontal space
  static final SizedBox horizontalSpaceLittle = SizedBox(width: _little.h);

  /// 12.0 double horizontal space
  static final SizedBox horizontalSpaceTiny = SizedBox(width: _tinySize.h);

  /// 16.0 double horizontal space
  static final SizedBox horizontalSpaceSmall = SizedBox(width: _smallSize.h);

  /// 24.0 double horizontal space
  static final SizedBox horizontalSpaceMedium = SizedBox(width: _mediumSize.h);

  /// 48.0 double horizontal space
  static final SizedBox horizontalSpaceLarge = SizedBox(width: _largeSize.h);

  /// 96.0 double horizontal space
  static final SizedBox horizontalSpaceMassive = SizedBox(width: _massiveSize.h);

  /// 6.0 double horizontal space
  static final SizedBox verticalSpaceLittle = SizedBox(height: _little.h);

  /// 12.0 double vertical space
  static final SizedBox verticalSpaceTiny = SizedBox(height: _tinySize.h);

  /// 16.0 double vertical space
  static final SizedBox verticalSpaceSmall = SizedBox(height: _smallSize.h);

  /// 24.0 double vertical space
  static final SizedBox verticalSpaceMedium = SizedBox(height: _mediumSize.h);

  /// 48.0 double vertical space
  static final SizedBox verticalSpaceLarge = SizedBox(height: _largeSize.h);

  /// 96.0 double vertical space
  static final SizedBox verticalSpaceMassive = SizedBox(height: _massiveSize.h);

  static final Widget spacedDivider = Column(
    children: <Widget>[
      verticalSpaceTiny,
      Divider(color: Colors.grey.shade300, height: 5),
      verticalSpaceTiny,
    ],
  );
}
