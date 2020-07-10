import 'package:creamsicle/constants.dart';
import 'package:creamsicle/screens/settings_screen.dart';
import 'package:flutter/material.dart';

/// This screen is the landing page for the app, and is where the user can
/// trigger the tutorial, or tell the app what character they intend to edit -
/// the previous or a new one.

class HomeScreen extends StatefulWidget {
  static String id = 'homescreen';
  HomeScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  openSettings(context) {
    Navigator.pushNamed(context, '/settings');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(
              thickness: 3,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        "CONTINUE",
                        style: kTextStyleToWhite,
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: kRoundedRectangleButtonShape,
                      onPressed: () {
                        print("continue Character pressed");
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        "NEW CHARACTER",
                        style: kTextStyleToWhite,
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: kRoundedRectangleButtonShape,
                      onPressed: () {
                        print("new Character pressed");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('settings button clicked');
          Navigator.pushNamed(context, SettingsScreen.id);
        },
        tooltip: 'Open Settings',
        child: Icon(Icons.settings),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
/*            FlatButton(
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                print("exit pressed");
              },
            ),*/
            FlatButton(
              child: Text(
                "REVIEW",
                style: kBottomAppBarTextStyle,
              ),
              //child: Icon(Icons.rate_review),
              onPressed: () {
                print("review pressed");
              },
            ),
            FlatButton(
              child: Text(
                "SUPPORT",
                style: kBottomAppBarTextStyle,
              ),
              onPressed: () {
                print("follow pressed");
              },
            ),
          ],
        ),
        clipBehavior: Clip.none,
        notchMargin: 4.5,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
