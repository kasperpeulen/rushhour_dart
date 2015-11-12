import 'package:rushhour/car.dart';
import 'package:rushhour/position.dart';
import 'package:range/range.dart';
import 'dart:io';
import 'package:quiver/core.dart';
import 'dart:collection';
import 'package:collection/equality.dart';

HashMap<int, List<Board>> statesCheckedHashTable = new HashMap();

class Board {
  final Board previous;
  final List<Car> cars;
  final Goal goal;

  Board({cars, this.goal})
      : cars = new List.unmodifiable(cars),
        previous = null;

  Board.fromBoard(Board previous, cars)
      : goal = previous.goal,
        cars = cars,
        previous = previous;

  bool isWinner() => cars[goal.index].end == goal.position;

  List<Board> nextBoards() {
    List<Board> newBoards = [];

    for (int i in range(0, cars.length)) {
      for (Car newCar in cars[i].nextCars(cars)) {
        List<Car> newCars = new List.from(cars);
        newCars[i] = newCar;
        Board board = new Board.fromBoard(this, newCars);

        int hash0 = board.hashCode;

        if (!statesCheckedHashTable.containsKey(hash0)) {
          statesCheckedHashTable[hash0] = [board];
          newBoards.add(board);
        } else if (!statesCheckedHashTable[hash0].contains(board)) {
          newBoards.add(board);
          statesCheckedHashTable[hash0].add(board);
        }
      }
    }
    return newBoards;
  }

  List<List<String>> get matrix {
    return makeMatrix(Car.boardWidth, Car.boardHeight, (i, j) {
      for (Car car in cars) {
        if (car.positions.contains(new Position(i, j))) {
          if (cars.indexOf(car) == 0) {
            return "RR";
          } else {
            var index = cars.indexOf(car).toString();
            if (index.length == 1) {
              return "0$index";
            } else {
              return index;
            }
          }
        }
      }
      return 'XX';
    });
  }

  toString() {
    var s = "\n";
    for (int j in new Iterable.generate(Car.boardHeight)) {
      for (int i in new Iterable.generate(Car.boardWidth)) {
        s += matrix[j][i] + ' ';
      }
      s += '\n';
    }
    return s;
  }

  int get hashCode => hashObjects(cars);

  operator ==(Board other) => const ListEquality().equals(other.cars, cars);
}

class Goal {
  final int index;
  final Position position;

  Goal(this.index, this.position);
}

List<List<String>> makeMatrix(int rows, int cols, MatrixFunction function) =>
    new Iterable<List<String>>.generate(
        rows,
        (i) => new Iterable<String>.generate(cols, (j) => function(j, i))
            .toList()).toList();

typedef String MatrixFunction(int i, int j);
