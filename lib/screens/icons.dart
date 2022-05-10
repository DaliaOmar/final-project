// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData create = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData trash = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData trash_alt = IconData(0xf2ed, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}