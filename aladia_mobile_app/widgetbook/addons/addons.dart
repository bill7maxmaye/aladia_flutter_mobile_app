import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// Theme Addon to switch between light and dark themes
final themeAddon = MaterialThemeAddon(
  themes: [
    WidgetbookTheme(name: 'Light Theme', data: ThemeData.light()),
    WidgetbookTheme(name: 'Dark Theme', data: ThemeData.dark()),
  ],
  //setting: ThemeSetting.firstAsSelected(),
);

/// Localization Addon for testing different locales

/// Device Frames Addon to test the UI on different devices

