import 'package:demo1/res/theme/theme_base.dart';
import 'package:flutter/material.dart';

class ThemeDark extends ThemeBase {
@override
  Brightness brightness() {
    return Brightness.dark;
  }

  @override
  Color background() {
    return Colors.black;
  }

  @override
  Color foreground() {
    return Colors.white;
  }
}