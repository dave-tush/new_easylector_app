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



  );



  static final lightTheme = ThemeData(



  );
}

