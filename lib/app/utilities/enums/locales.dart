import 'package:flutter/material.dart';

enum Locales {
  tr(Locale('tr', 'TR'));

  final Locale locale;

  const Locales(this.locale);
}
