import 'package:creamsicle/model/character.dart';
import 'package:flutter/material.dart';

// TODO: hook this up to the svg for a Character
class CharacterBuilder {
  Character current;

  CharacterBuilder(this.current);

  Widget display() {
    return Stack();
  }
}
