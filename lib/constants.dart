import 'package:flutter/material.dart';

const appName = "CreamSlices";

// TODO: figure out how to make constant
ThemeData kOrangeThemeData = ThemeData(
  backgroundColor: Colors.orangeAccent,
  dialogBackgroundColor: Colors.deepOrangeAccent,
  scaffoldBackgroundColor: Colors.orangeAccent,
  primarySwatch: Colors.deepOrange,
  dividerColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  bottomAppBarColor: Colors.white, // decide between deep Orange + white
);

// TODO: compare orange on white to white on orange
const kBottomAppBarTextStyle = TextStyle(
  color: Colors.deepOrange,
);

const kTextStyleToWhite = TextStyle(
  color: Colors.white,
);

var kRoundedRectangleButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30.0),
);
