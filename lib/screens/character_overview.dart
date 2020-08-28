import 'package:creamsicle/constants.dart';
import 'package:flutter/material.dart';
import 'package:creamsicle/model/character.dart';

class OverviewScreen extends StatefulWidget {
  static String id = 'character_overview';

  OverviewScreen.empty();
  OverviewScreen(this.char);

  Character char;

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
