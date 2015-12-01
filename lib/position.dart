library rushour.position;

import 'dart:collection';
import 'package:rushhour/common.dart';
import 'package:rushhour/car.dart';

class Position {
  /// The horizontal distance relative to the top left position.
  final int x;

  /// The vertical distance relative to the top left position.
  final int y;

  static final HashMap<int, Position> cache = new HashMap();

  factory Position(int x, int y) =>
      cache[hash(x,y)] ??= new Position._(x, y);

  Position._(this.x, this.y);

  operator +(Position other) => new Position(x + other.x, y + other.y);

  static int hash(x,y) => x + Car.boardWidth + Car.boardWidth * 4 * y;

  String toString() => '($x, $y)';
}

