import 'package:creamsicle/constants.dart';
import 'package:creamsicle/screens/character_body.dart';
import 'package:creamsicle/screens/character_face.dart';
import 'package:creamsicle/screens/character_outfit.dart';
import 'package:creamsicle/screens/character_overview.dart';
import 'package:creamsicle/screens/character_stats.dart';
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
        OverviewScreen.id: (context) => OverviewScreen.empty(),
        OutfitScreen.id: (context) => OutfitScreen(),
        BodyScreen.id: (context) => BodyScreen(),
        FaceScreen.id: (context) => FaceScreen(),
        StatsScreen.id: (context) => StatsScreen(),
      },
    );
  }
}
