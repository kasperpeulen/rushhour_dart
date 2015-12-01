import 'package:rushhour/games.dart';
import 'package:rushhour/car.dart';
import 'package:rushhour/board.dart';

main() {
  Car.boardWidth = Car.boardHeight = 12;
  Car redCar = game7.redCar;

  print(game7);

//  print(game7);
//  List<Car> problemCars = [];
//

  var indexesToMove = game7.carsThatClashWithGoal().map((Car c) => game7.cars.indexOf(c));

  print('To get car ${game7.redCarIndex} to ${game7.goal.end}, you need to clear cars: $indexesToMove');

  Map<int, Moves> firstStep = {};

  for (int index in indexesToMove) {
    Moves moves = game7.movesToAvoidClash(redCar, game7.cars[index]);
    print('Try to let $index move one of: ${moves.all}.');
    firstStep[index] = moves;
  }

  game7.redCarIndex = firstStep.keys.first;
  game7.goal = new Goal(game7.redCar.start, game7.redCar.move(firstStep.values.first.best).end);

  indexesToMove = game7.carsThatClashWithGoal().map((Car c) => game7.cars.indexOf(c));

  print('To get ${game7.redCarIndex} to move ${firstStep.values.first.best}, you need to clear cars: $indexesToMove');

  Map<int, Moves> secondStep = {};

  for (int index in indexesToMove) {
    Moves moves = game7.movesToAvoidClash(redCar, game7.cars[index]);
    print('Try to let $index move one of: ${moves.all}.');
    secondStep[index] = moves;
  }

  game7.redCarIndex = secondStep.keys.first;
  game7.goal = new Goal(game7.redCar.start, game7.redCar.move(secondStep.values.first.best).end,
    previousGoal: game7.goal, allOptions: secondStep);

  indexesToMove = game7.carsThatClashWithGoal().map((Car c) => game7.cars.indexOf(c));

  print('To get ${game7.redCarIndex} to move ${firstStep.values.first.best}, you need to clear cars: $indexesToMove');


  Map<int, Moves> thirdStep = {};

  for (int index in indexesToMove) {
    Moves moves = game7.movesToAvoidClash(redCar, game7.cars[index]);
    print('Try to let $index move one of: ${moves.all}.');
    thirdStep[index] = moves;
  }

//
//  Car carToMove = newRedCar.clashesWithCars(redCar, game7.cars).first;
//
//  print(game7.rangeToAvoidClash(newRedCar, carToMove));



//  while(game7.cars.any((Car c) => newRedCar != null && c != redCar && newRedCar.clashesWith(c))) {
//    problemCars.add(game7.cars.firstWhere((Car c) => newRedCar != null && c != redCar && newRedCar.clashesWith(c)));
//    newRedCar = newRedCar.move(1);
//  }

//  print(problemCars.toSet());
}