import 'package:rushhour/car.dart';
import 'package:rushhour/position.dart';
import 'package:range/range.dart' hide Range;
import 'package:quiver/core.dart';
import 'dart:collection';

HashMap<int, List<Board>> statesCheckedHashTable = new HashMap();

class Board {
  final Board previous;
  final List<Car> cars;
  Goal goal;

  Board({List<Car>cars, Position goal})
      : goal = new Goal(cars[0].start, goal),
        cars = cars,
        previous = null;

  Board.fromBoard(Board previous, List<Car> cars)
      : goal = previous.goal,
        cars = cars,
        previous = previous;

  int redCarIndex = 0;

  Car get redCar => cars[redCarIndex];

  bool isWinner() => redCar.end == goal.end;

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
    return makeMatrix(Car.boardWidth, Car.boardHeight, (int j, int i) {
      for (Car car in cars) {
        if (car.positions.contains(new Position(i, j))) {
          if (cars.indexOf(car) == 0) {
            return "RR";
          } else {
            var index = cars.indexOf(car).toString();
            if (index.length == 1) {
              return "0$index";
            } else {
              return "$index";
            }
          }
        }
      }
      return 'XX';
    } as MatrixFunction) ;
  }

  List<Car> carsThatClashWithGoal() {
    var cars = new List.from(this.cars)..remove(redCar);
    return cars
        .where((Car c) => c.clashesWithRange(new PositionRange.fromGoal(goal)))
        .toList() as List<Car>;
  }

  Moves movesToAvoidClash(Car fixed, Car movable) {
    int forward = 1;
    while (forward <= findRange(movable).end) {
      Car newCar = movable.move(forward);
      if (!newCar.clashesWith(fixed)) {
        break;
      } else {
        forward++;
      }
    }

    List forwardMoves = [];

    if (forward <= findRange(movable).end) {
      forwardMoves = range(forward, findRange(movable).end + 1).toList();
    }


    int backward = -1;
    while (backward >= findRange(movable).begin) {
      Car newCar = fixed.move(backward);
      if (!newCar.clashesWith(fixed)) {
        break;
      } else {
        backward--;
      }
    }

    List backwardMoves = [];

    if (backward >= findRange(movable).begin) {
      backwardMoves = range(backward, findRange(movable).begin - 1, -1).toList();
    }

    return new Moves(forwardMoves, backwardMoves);
  }

  Range findRange(Car car) {
    var backward, forward;
    var backCars =
        _findSimilar(car).where((Car other) => other.variable < car.variable);
    backward = -backCars
        .map((c) => c.length)
        .fold(car.variable, (previous, element) => previous - element);

    var forwardCars =
        _findSimilar(car).where((Car other) => other.variable > car.variable);
    forward = forwardCars.map((c) => c.length).fold(
        (car.horizontal ? Car.boardWidth : Car.boardHeight) -
            car.variable -
            car.length,
        (previous, element) => previous - element);

    return new Range(backward, forward);
  }

  List<Car> _findSimilar(Car car) {
    return cars
        .where((Car other) =>
            other.horizontal == car.horizontal && other.fixed == car.fixed)
        .toList();
  }

  String toString() {
    var s = "\n";
    for (int y in range(Car.boardHeight)) {
      for (int x in range(Car.boardWidth)) {
        s += matrix[x][y] + ' ';
      }
      s += '\n';
    }
    return s;
  }

  int get hashCode => hashObjects(cars);

  bool operator ==(Board other) => equals(other.cars, cars);

  bool equals(List<Car> e1, List<Car> e2) {
    if (identical(e1, e2)) return true;
    if (e1 == null || e2 == null) return false;
    int length = e1.length;
    if (length != e2.length) return false;
    for (int i = 0; i < length; i++) {
      if (e1[i] != e2[i]) return false;
    }
    return true;
  }
}

class Goal {
  Position begin;
  Position end;

  Goal(this.begin, this.end, {this.previousGoal, this.allOptions});

  Goal previousGoal;

  Map<int, Moves> allOptions;
}

class Goal2 {
  int index;
  Position end;

  Goal2(this.index, this.end) {
  }


}

List<List<String>> makeMatrix(int rows, int cols, MatrixFunction function) =>
    new Iterable<List<String>>.generate(
        rows,
        (i) => new Iterable<String>.generate(cols, (j) => function(j, i))
            .toList()).toList();

typedef String MatrixFunction(int i, int j);
