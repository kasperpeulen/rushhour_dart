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
  int count = 1;
  while(count < 100) {
    nextPath = [];
    if (path.last.isEmpty) {
      return;
    }
    for(Board board in path.last) {
      var nextBoards = board.nextBoards();
      if (nextBoards.any((Board board) => board.isWinner())) {
        var winner = nextBoards.firstWhere((Board board) => board.isWinner());
        Board state= winner;
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
//    print(statesCheckedHashTable.values.firstWhere((list) => list.length > 1, orElse: () => null));
    print(after.difference(before));
    count++;
  }
}

main() {
  manual();
}

benchmark() {
  TemplateBenchmark.main();
}

DateTime before;
DateTime after;
manual() {
  before = new DateTime.now();
  Car.boardHeight =  Car.boardWidth = 9;
  breathFirstSearch(game4);
  after = new DateTime.now();
  print(after.difference(before));
}

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends BenchmarkBase {
  const TemplateBenchmark() : super("Template");

  static void main() {
    new TemplateBenchmark().report();
  }

  // The benchmark code.
  void run() {
    Car.boardHeight =  Car.boardWidth = 9;
    breathFirstSearch(game4);
  }

  // Not measured setup code executed prior to the benchmark runs.
  void setup() {}

  // Not measures teardown code executed after the benchark runs.
  void teardown() {
    statesCheckedHashTable = new Map();
  }
}

