import 'package:rushhour/car.dart';
import 'package:rushhour/position.dart';

Car car1 = new Car(start: new Position(1, 1), length: 2, horizontal: true);

Car car2 = new Car(start: new Position(1, 1), length: 3, horizontal: false);

main() {
  Car.boardLength = 6;

  print(car1);

  Car newCar1 = car1.move(2);

  print(newCar1);

  Car newCar2 = car2.move(5);

  print(car1.isValid());
  print(newCar2.isValid());
}
