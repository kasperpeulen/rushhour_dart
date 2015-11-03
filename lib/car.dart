library rushour.car;

import 'package:rushhour/position.dart';

class Car {
  static int boardLength = 6;

  /// Represent the start position of the car.
  ///
  /// Here the convention is used that the top left position of the car is
  /// the start position
  Position start;

  /// True if the car is horizontally placed on the board.
  ///
  /// If false, the caris vertically placed on the board.
  bool horizontal;

  /// The length of the car. The length can be either 2 (a car) or 3 (a truck).
  int length;

  /// Constructs a new instance of the Car class.
  Car({this.start, this.horizontal, this.length});

  /// Represent the end position of the car.
  ///
  /// Here the convention is used tha the bottom right position of the car is
  /// the end position.
  Position get end {
    if (horizontal) {
      return start + new Position(length - 1, 0);
    } else {
      return start + new Position(0, length - 1);
    }
  }

  /// Creates a new instance of a Car that is moved a number of [steps],
  /// relalative to the current instance of the Car.
  Car move(int steps) {
    var newStart;
    if (horizontal) {
      newStart = start + new Position(steps, 0);
    } else {
      newStart = start + new Position(0, steps);
    }
    return new Car(start: newStart, length:length, horizontal: horizontal);
  }
}
