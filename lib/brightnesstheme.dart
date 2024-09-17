import 'package:flutter/material.dart';
//brightness button code
class ThemeProvider extends ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.system; // Default is system-based theme

  ThemeMode get themeMode => _themeMode;

  // Methods to toggle between dark/light/system mode
  void toggleManualDarkMode(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notify the UI of the change
  }

  void useSystemTheme() {
    _themeMode = ThemeMode.system; // Reset to system theme
    notifyListeners(); // Notify the UI of the change
  }
}




//brightness button end  code
//
//brightness system change code
class Brightnesstheme {
  static final lightmode =ThemeData(

      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.purple[50],
          //light on and text dark
          colorScheme: ColorScheme.light(
secondary: Colors.purple[50]!
          ),
      iconTheme: IconThemeData(color: Colors.black),


//light on and text dark
  );
  static final darkmode =ThemeData(
    primaryColor: Color(0x28E6E6EE),
  scaffoldBackgroundColor: Colors.black,
      //dark on and text light
      colorScheme: ColorScheme.dark(
        secondary: Colors.white
      ),
      iconTheme: IconThemeData(color: Colors.white)
    //dark on and text light

  );
}


