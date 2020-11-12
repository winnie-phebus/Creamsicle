import 'package:creamsicle/constants.dart';
import 'package:creamsicle/model/character.dart';
import 'package:creamsicle/screens/character_overview.dart';
import 'package:creamsicle/screens/settings_screen.dart';
import 'package:creamsicle/view/character_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// This screen is the landing page for the app, and is where the user can
/// trigger the tutorial, or tell the app what character they intend to edit -
/// the previous or a new one.

class HomeScreen extends StatefulWidget {
  static String id = 'homescreen';
  HomeScreen({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  openSettings(context) {
    Navigator.pushNamed(context, '/settings');
  }

  CharacterBuilder cb = CharacterBuilder(new Character.empty());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'SUNNIE CHAVEZ',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30.0,
              ),
            ),
            Stack(
              children: <Widget>[
                cb.characterHead(),
                /*               Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SvgPicture.asset(
                    'images/Body.svg',
                    color: kSkinToneRusset,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 65.0),
                  child: SvgPicture.asset(
                    'images/Human_Ears.svg',
                    color: kSkinToneRusset,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 47.0,
                    top: 0.0,
                  ),
                  child: SvgPicture.asset(
                    'images/Wavy_Bob.svg',
                    color: Colors.black,
                  ),
                ),
                */ /*Column(
                  children: <Widget>[
                    Expanded(
                      //flex: 1,
                      child: SvgPicture.asset('images/Wavy_Bob.svg'),
                    ),
                    Expanded(
                      //flex: 4,
                      child: SvgPicture.asset('images/Flower_Dress.svg'),
                    ),
                  ],
                ),*/
              ],
            ),
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
                        Navigator.pushNamed(context, OverviewScreen.id);
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
