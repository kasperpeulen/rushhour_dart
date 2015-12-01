library rushour.car;

import 'package:rushhour/position.dart';
import 'dart:collection';
import 'package:quiver/core.dart';
import 'package:range/range.dart' hide Range;
import 'package:rushhour/board.dart';

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

    List<Position> positions;

    if (length == 2) {
      positions = [start, end];
    } else {
      if (horizontal) {
        positions = [start, start + new Position(1, 0), end];
      } else {
        positions = [start, start + new Position(0, 1), end];
      }
    }

    return cache[hashh(start, end)] ??=
        new Car._(start, horizontal, length, end, positions, hash2(start, end));
  }

  Car._(this.start, this.horizontal, this.length, this.end, this.positions,
      this.hashCode);

  int get variable => horizontal ? start.x : start.y;

  int get fixed => horizontal ? start.y : start.x;
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

  bool clashesWith(Car otherCar) {
    final otherStart = otherCar.start;
    final otherEnd = otherCar.end;

    return end.x >= otherStart.x &&
        start.x <= otherEnd.x &&
        end.y >= otherStart.y &&
        start.y <= otherEnd.y;
  }

  bool clashesWithRange(PositionRange range) {
    return end.x >= range.x.begin &&
        start.x <= range.x.end &&
        end.y >= range.y.begin &&
        start.y <= range.y.end;
  }

  List<Car> clashesWithCars(Car self, List<Car> cars) {
    return cars.where((Car c) => clashesWith(c) && c != self).toList();
  }

  bool clashesWithAnyOf(Car self, List<Car> otherCars) {
    return otherCars.any((c) => c != self && clashesWith(c));
  }

  Iterable<Car> nextCars(List<Car> otherCars) sync* {
//    List<Car> newCars = [];
    Car newCar = move(1);
    if (newCar != null && !newCar.clashesWithAnyOf(this, otherCars)) {
      yield (newCar);
      newCar = newCar.move(1);
    }

    newCar = move(-1);
    if (newCar != null && !newCar.clashesWithAnyOf(this, otherCars)) {
      yield (newCar);
      newCar = newCar.move(-1);
    }
//    return newCars;
  }



  int hashCode;

  static int hashh(start, end) {
    int power = Car.boardWidth;
    return start.x +
        start.y * power +
        end.x * power * power +
        end.y * power * power * power;
  }

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





class PositionRange {
  Range x;
  Range y;

  PositionRange(this.x, this.y);

  PositionRange.fromGoal(Goal goal) :
      x = new Range(goal.begin.x, goal.end.x),
      y = new Range(goal.begin.y, goal.end.y);

  carsToMoveToAchieveGoal(List<Car> otherCars) {

  }
}

class Range {
  int end;
  int begin;

  Range(this.begin, this.end);

  List<int> get list => range(end, begin).toList();

  String toString() => '($begin, $end)';
}


class Moves {
  int index;
  List backwards;
  List forwards;

  Moves(this.backwards, this.forwards);

  List<int> get all {
    List<int> all = ([]..addAll(backwards)..addAll(forwards)) as List<int>;
    all.sort((a,b) => a.abs().compareTo(b.abs()));
    return all;
  }

  int get best => all.first;

  String toString() => all.toString();
}

