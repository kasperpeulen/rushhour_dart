import 'package:testcase/testcase.dart';
export 'package:testcase/init.dart';

import 'package:rushhour/position.dart';
import 'package:rushhour/car.dart';

class CarTest implements TestCase {
  Car car1 = new Car(start: new Position(1, 1), length: 2, horizontal: true);

  Car car2 = new Car(start: new Position(1, 1), length: 3, horizontal: false);

  setUp() {
    Car.boardLength = 6;
  }

  tearDown() {}

  @test
  it_has_correct_end_position() {
    expect(car1.end, new Position(2, 1));

    expect(car2.end, new Position(1, 3));
  }

  @test
  it_moves_correctly() {
    Car movedCar = car1.move(1);

    expect(movedCar.start, new Position(2, 1));
  }
}
