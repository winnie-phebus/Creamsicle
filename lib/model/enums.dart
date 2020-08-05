/// This file contains the enums used throughout the model that builds a Character.

/// Sex refers to the biological sex of the Character,
///
/// defaults to female because of Cream.
enum Sex { female, male, intersex }

/// Zodiac is the traditional 12 Zodiac Signs from Astrology.
enum Zodiac {
  Aries,
  Taurus,
  Gemini,
  Cancer,
  Leo,
  Virgo,
  Libra,
  Scorpio,
  Sagittarius,
  Capricorn,
  Aquarius,
  Pisces,
}

/// Represents the different states of a FacialFeature.
enum Expression { neutral, angry, happy, sad }

// TODO: maybe refactor? Used to be Weight
enum Thickness { slim, average, large }

/// Represents what the face shape of the Character currently is.
enum FaceShape { diamond, heart, round, oval, square, oblong }

/// Helps tell the View where each component is in the stack.
///
/// In order, [lowest] is for the way back of a Character and holds things like
/// wings or tails. [midBelow] is an option. Then, [below] is for the back-hair,
/// [mid] is for skin & like body parts, [above] is for the facial features,
/// [midAbove] is for the eyelashes and select other items and [high] is for bangs.
/// Clothing may also be on this structure, or may have their own.
enum Layer { lowest, midBelow, below, mid, above, midAbove, high }

/// Represents how open a Feature is
/// For example eyes can be [closed] for blinking, [semi] for certain
/// expressions, and [open] which is straight-forward.
enum State { closed, semi, open }
