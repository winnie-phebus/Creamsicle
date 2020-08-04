import 'package:creamsicle/constants.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatefulWidget {
  static String id = 'character_overview';

  @override
  State<StatefulWidget> createState() => _CharacterOverview();
}

class _CharacterOverview extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
