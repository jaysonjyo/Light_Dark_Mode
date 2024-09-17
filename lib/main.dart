
import 'package:dark_white_mode/brightnesstheme.dart';
import 'package:dark_white_mode/changethemebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BottomNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: Brightnesstheme.lightmode,
          darkTheme: Brightnesstheme.darkmode,
          home:BottamNavigation());
      }
    );
  }
}
