import 'package:creamsicle/constants.dart';
import 'package:creamsicle/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:creamsicle/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kOrangeThemeData,
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(title: 'Flutter Demo Home Page'),
        "/settings": (context) => SettingsScreen(),
      },
    );
  }
}

// TODO: add LoadingScreen to Route Map
// TODO: add SettingsScreen to Route Map
// TODO: create the rest of the screens in Docs.
