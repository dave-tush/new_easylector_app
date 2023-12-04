import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../color_house/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  //bool get isDarkMode => themeMode == ThemeMode.dark;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  Future<void> ChangeTheme() async {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      colorScheme: ColorScheme.dark(),
      primaryColor: Colors.white,
      primaryColorDark: Colors.grey.shade900);

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(246, 246, 246, 1.0),
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.white,
      primaryColorDark: MyColors.maincolor);
}
