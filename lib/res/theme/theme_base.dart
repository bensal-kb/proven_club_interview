import 'package:flutter/material.dart';

abstract class ThemeBase {
  Brightness brightness() => Brightness.light;

  Color background() => Colors.white;
  Color foreground() => Colors.black;

  ThemeData getTheme(BuildContext context) {
    return ThemeData(
      colorScheme: Theme.of(context)
          .colorScheme
          .copyWith(background: background(), brightness: brightness()),
      appBarTheme: AppBarTheme(
        backgroundColor: background()
      ),
      iconTheme: IconThemeData(
        color: foreground(),

      )
    );
  }
}
