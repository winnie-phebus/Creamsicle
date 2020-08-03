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

class Eyes extends FacialFeature {
  Eyes(description) : super(description, Expression.neutral);
}

class Nose extends Feature {
  Nose(description) : super(description, Layer.above);
}

class Mouth extends FacialFeature {
  Mouth(description) : super(description, Expression.neutral);
}

class Body {
  Body();
}

class Outfit {
  Outfit();
}

class Info {
  int age;
  String birthday;
  Zodiac sign;
  String bio;

  Info(this.age, this.birthday, this.sign, this.bio);
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
