import 'dart:ui' show Size;

enum DesignSize {
  designSize(Size(375, 812));

  const DesignSize(this.size);

  final Size size;
}
