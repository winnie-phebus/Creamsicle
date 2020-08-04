import 'package:creamsicle/constants.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static String id = 'settings_screen';
  @override
  _SettingsScreen createState() => _SettingsScreen();
}

class _SettingsScreen extends State<SettingsScreen> {
  //TODO: consider using a ListView with specific task cards within && consider Wrap
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "$appName SETTINGS",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
