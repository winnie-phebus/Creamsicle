// TODO: document this!! Look into using DartDoc.
import 'dart:ui';

import 'package:creamsicle/model/enums.dart';

// TODO: go through and flesh out these classes - getters, setters and randomizers
// TODO: also, don't forget to TEST the whole model!
//  Want to make sure she works, no?
class Character {
  // Character Info / Bio Things
  String name;
  Sex bodyType;
  Info charInfo;

  // Character Visual things
  Head head;
  Body body;
  Outfit clothes;

  // Constructor without values
  Character.empty();

  // Constructor
  Character(this.name, this.bodyType, this.charInfo, this.head, this.body,
      this.clothes);
}

// TODO: go through and finish all these inner classes, get all the way down to individual Features!!
class Head {
  // HAIR
  Hair bangs;
  Hair behind;

  // FACE
  Brows eyebrows;
  Eyes eyes;
  Nose nose;
  Mouth mouth;

  // GENERAL
  Ears ears;
  FaceShape faceShape;

  // Constructor
  Head(this.bangs, this.behind, this.eyebrows, this.eyes, this.nose, this.mouth,
      this.ears, this.faceShape);

// TODO: maybe randomize should belong to the View Classes / interpretations?
}

class Ears extends Feature {
  // Constructor
  Ears(description) : super(description, Layer.mid);
}

class Hair extends Feature {
  // Constructor
  Hair(description, stackLayer) : super(description, stackLayer);
}

class Brows extends FacialFeature {
  Brows(description) : super(description, Expression.neutral);
}

class Eyes extends FacialFeature with Blinkable {
  Lash lashes;

  Eyes(description) : super(description, Expression.neutral);

  @override
  void switchState() {
    super.switchState();
    lashes.switchState();
  }
}

mixin Blinkable {
  State current = State.open;
  bool openState = true;

  void switchState() {
    this.current = (this.openState) ? State.closed : State.open;
    this.openState = !this.openState;
  }
}

class Lash extends Feature with Blinkable {
  Lash(String description, Layer stackLayer)
      : super(description, Layer.midAbove);
}

class Nose extends Feature {
  Nose(description) : super(description, Layer.above);
}

class Mouth extends FacialFeature {
  Mouth(description) : super(description, Expression.neutral);
}

class Body {
  Neck neck;
  Body();
}

class Neck extends BodyPart {
  Neck();
}

class Outfit {
  Outfit();
}

class Info {
  int age;
  String birthday;
  String height;
  Zodiac sign;
  String bio;

  Info(this.age, this.birthday, this.height, this.sign, this.bio);

  static String heightConverter(int feet, int inches) {
    return "$feet'$inches";
  }

  static String heightConverterCm(double cm) {
    //TODO: figure out Conversion from cm to feet + inches
    return heightConverter(10, 6);
  }
}

class BodyPart {
  Color skinColor;
  Thickness currentThickness;

  // Default Constructor
  BodyPart();

  BodyPart.instance(this.skinColor, this.currentThickness);
}

abstract class Feature extends BodyPart {
  // used to identify what visual component should be summoned
  String description;
  Layer stackLayer;

  // Constructor
  Feature(this.description, this.stackLayer);
}

abstract class FacialFeature extends Feature {
  // used to find which version of the facial feature should currently be shown.
  Expression currentExpression;

  // Constructor
  FacialFeature(description, this.currentExpression)
      : super(description, Layer.above);
}

abstract class ClothingItem {
  List<Tag> tags;
}

class Tag {}
