import 'package:rushhour/board.dart';
import 'package:rushhour/car.dart';
import 'package:rushhour/games.dart';
import 'package:benchmark_harness/benchmark_harness.dart';
import 'print.dart';
import 'dart:async';

import 'dart:core' hide print;

breathFirstSearch(Board initial) async {
  List<List<Board>> path = [];
  path.add([initial]);

  statesCheckedHashTable[initial.hashCode] = [initial];
  print('step1');
  print(initial);
  List<Board> nextPath;
  int count = 2;
  while (count < 100) {
    nextPath = <Board>[];
    if (path.last.isEmpty) {
      return;
    }
    for (Board board in path.last) {
      List<Board> nextBoards = board.nextBoards();
      if (nextBoards.any((Board board) => board.isWinner())) {
        var winner = nextBoards.firstWhere((Board board) => board.isWinner());
        Board state = winner;
        while (state.previous != null) {
          print(state.previous);
          state = state.previous;
        }
        return;
      }
      nextPath.addAll(nextBoards);
    }
    path.add(nextPath);
    print('step $count');
    print('states explored: ${nextPath.length}');
    after = new DateTime.now();
    print(after.difference(before));
    print('');
    count++;
    await new Future.delayed(new Duration(milliseconds: 1), () {

    });
  }
}

DateTime before;
DateTime after;

main() {
  before = new DateTime.now();
  Car.boardHeight = Car.boardWidth = 6;
  breathFirstSearch(game2);
  after = new DateTime.now();
  print(after.difference(before));
}
