import 'package:creamsicle/constants.dart';
import 'package:creamsicle/screens/loading_screen.dart';
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
      title: 'CreamSlices',
      theme: kOrangeThemeData,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
      },
    );
  }
}

// TODO: create the rest of the screens in Docs.
