import 'package:dark_white_mode/brightnesstheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Change_themebutton extends StatelessWidget {
  const Change_themebutton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        // Manual toggle between dark and light modes
        Switch(
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (value) {
            themeProvider.toggleManualDarkMode(value); // Toggle theme
          },
        ),
        // Reset to system default theme option


        // them rest
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            themeProvider.useSystemTheme(); // Reset to system theme
          },
        ),
      ],
    );
  }
}
