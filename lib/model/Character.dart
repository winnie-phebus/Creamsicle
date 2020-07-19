// TODO: document this!!
import 'dart:ui';

import 'package:creamsicle/model/enums.dart';

// TODO: go through and flesh out these classes - getters, setters and randomizers
// TODO: also, don't forget to TEST the whole model!
//  Want to make sure she works, no?
class Character {
  String name;
  Sex bodyType;
  Info charInfo;

  Head _head;
  Body _body;
  Outfit _clothes;

  Character() {}

  // sets the sex of the given character
  void setSex(Sex given) {
    this.bodyType = given;
  }
}

// TODO: go through and finish all these inner classes, get all the way down to individual Features!!
class Head {
  Hair bangs;
  Hair behind;
}

class Hair {}

class Body {}

class Outfit {}

class Info {
  int age;
  String birthday;
  Zodiac sign;
  String bio;
}

class CharacterPart {
  Color skincolor;
}

class Feature {
  // used to identify what visual component should be summoned
  String description;
}
