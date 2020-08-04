import 'package:flutter/material.dart';

// TODO: goes through the body parts and compiles everything into lists
// TODO: makes the lists and then provides that information to the Controller
class LoadingScreen extends StatefulWidget {
  static String id = 'loadingscreen';
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
