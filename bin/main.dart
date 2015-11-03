import 'package:rushhour/car.dart';
import 'package:rushhour/position.dart';

Car car1 = new Car(start: new Position(1, 1), length: 2, horizontal: true);

Car car2 = new Car(start: new Position(1, 1), length: 3, horizontal: false);


main() {
  print(car1);

  var newCar = car1.move(2);

  print(newCar);
}