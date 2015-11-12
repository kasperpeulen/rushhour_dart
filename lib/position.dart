library rushour.position;

import 'dart:io';
import 'dart:async';
import 'package:quiver/core.dart';
import 'package:benchmark_harness/benchmark_harness.dart';
import 'dart:collection';
import 'package:rushhour/common.dart';

class Position {
  /// The horizontal distance relative to the top left position.
  final int x;

  /// The vertical distance relative to the top left position.
  final int y;

  static final HashMap<int, Position> cache = new HashMap();

  factory Position(int x, int y) =>
      cache[szudzikPairIntegers(x,y)] ??= new Position._(x, y);

  Position._(this.x, this.y);

  operator +(Position other) => new Position(x + other.x, y + other.y);

  int get hashCode => szudzikPairIntegers(x,y);

  toString() => '($x, $y)';
}


// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super("Template");

  static void main() {
    new TemplateBenchmark().report();
  }

  // The benchmark code.
  void run() {
    var list = [];
    for (int i = 0; i < 1000; i++) {
      var a = new Position(0, 100) == new Position(0, i);
    }
  }

  // Not measured setup code executed prior to the benchmark runs.
  void setup() {}

  // Not measures teardown code executed after the benchark runs.
  void teardown() {
    print(Position.cache);
  }
}

main() async {
  TemplateBenchmark.main();
}
