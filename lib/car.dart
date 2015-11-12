library rushour.car;

import 'package:rushhour/position.dart';
import 'package:rushhour/common.dart';
import 'dart:collection';

class Car {
  static int boardWidth = 6;
  static int boardHeight = 6;

  /// Represent the start position of the car.
  ///
  /// Here the convention is used that the top left position of the car is
  /// the start position
  final Position start;

  /// True if the car is horizontally placed on the board.
  ///
  /// If false, the car is vertically placed on the board.
  final bool horizontal;

  /// The length of the car. The length can be either 2 (a car) or 3 (a truck).
  final int length;

  final Position end;

  final List<Position> positions;

  static final HashMap<int, Car> cache = new HashMap();

  /// Constructs a new instance of the Car class.
  factory Car({Position start, bool horizontal, int length}) {
    Position end;
    if (horizontal) {
      end = start + new Position(length - 1, 0);
    } else {
      end = start + new Position(0, length - 1);
    }

    if (start.x < 0 ||
        start.y < 0 ||
        end.x >= boardWidth ||
        end.y >= boardHeight) {
      return null;
    }

    var positions;

    if (length == 2) {
      positions = new List.unmodifiable([start, end]);
    } else {
      if (horizontal) {
        positions = [start, start + new Position(1, 0), end];
      } else {
        positions = [start, start + new Position(0, 1), end];
      }
    }

    int hashCode = szudzikPair(start.hashCode, end.hashCode);

    return cache[hashCode] ??=
        new Car._(start, horizontal, length, end, positions);
  }

  Car._(this.start, this.horizontal, this.length, this.end, this.positions);

  /// Creates a new instance of a Car that is moved a number of [steps],
  /// relative to the current instance of the Car.
  Car move(int steps) {
    var newStart;
    if (horizontal) {
      newStart = start + new Position(steps, 0);
    } else {
      newStart = start + new Position(0, steps);
    }
    return new Car(start: newStart, length: length, horizontal: horizontal);
  }

  bool clashesWidth(Car otherCar) {
    final otherStart = otherCar.start;
    final otherEnd = otherCar.end;

    return end.x >= otherStart.x &&
        start.x <= otherEnd.x &&
        end.y >= otherStart.y &&
        start.y <= otherEnd.y;
  }

  bool clashesWithAnyOf(List<Car> otherCars) {
    return otherCars.any((c) => clashesWidth(c));
  }

  List<Car> nextCars(List<Car> otherCars) {
    otherCars = new List.from(otherCars)..remove(this);
    List<Car> newCars = [];
    Car newCar = move(1);
    while (newCar != null && !newCar.clashesWithAnyOf(otherCars)) {
      newCars.add(newCar);
      newCar = newCar.move(1);
    }

    newCar = move(-1);
    while (newCar != null && !newCar.clashesWithAnyOf(otherCars)) {
      newCars.add(newCar);
      newCar = newCar.move(-1);
    }
    return newCars;
  }

  int get hashCode => szudzikPair(start.hashCode, end.hashCode);

  /// Represents the cars as placed in a [boardLength] x [boardLength] matrix.
  String toString() {
    String s = "\n";
    for (int y = 0; y < boardHeight; y++) {
      for (int x = 0; x < boardWidth; x++) {
        if (positions.contains(new Position(x, y))) {
          s += "C ";
        } else {
          s += "X ";
        }
      }
      s += "\n";
    }
    return s;
  }
}
