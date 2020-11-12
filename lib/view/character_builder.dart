import 'package:creamsicle/model/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// TODO: hook this up to the svg for a Character
class CharacterBuilder {
  Character current;

  CharacterBuilder(this.current);

  Widget display() {
    return Stack();
  }

  Widget characterHead() {
    return Stack(
      children: <Widget>[
        Container(
          child: SvgPicture.asset(
            'images/backHair.svg',
          ),
          height: 400,
        )
      ],
    );
  }
}
