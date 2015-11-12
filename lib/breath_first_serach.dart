import 'package:rushhour/board.dart';
import 'package:rushhour/car.dart';
import 'package:rushhour/games.dart';
import 'package:benchmark_harness/benchmark_harness.dart';

void breathFirstSearch(Board initial) {
  List path = [];
  path.add([initial]);

  statesCheckedHashTable[initial.hashCode] = [initial];
  print('step1');
  print(initial);
  List nextPath;
  int count = 2;
  while (count < 100) {
    nextPath = [];
    if (path.last.isEmpty) {
      return;
    }
    for (Board board in path.last) {
      var nextBoards = board.nextBoards();
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
    print(nextPath.length);
    after = new DateTime.now();
    print(after.difference(before));
    count++;
  }
}

DateTime before;
DateTime after;

main() {
  before = new DateTime.now();
  Car.boardHeight = Car.boardWidth = 12;
  breathFirstSearch(game7);
  after = new DateTime.now();
  print(after.difference(before));
}
