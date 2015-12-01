import 'packages/testcase/testcase.dart';
export 'packages/testcase/init.dart';

import 'position.dart';
import 'car.dart';

//class CarTest implements TestCase {
//  Car car1 = new Car(start: new Position(1, 1), length: 2, horizontal: true);
//  Car car2 = new Car(start: new Position(1, 1), length: 3, horizontal: false);
//  Car car3 = new Car(start: new Position(3, 3), length: 2, horizontal: true);
//
//  setUp() {
//    Car.boardHeight = 6;
//    Car.boardWidth = 6;
//  }
//
//  tearDown() {}
//
//  @test
//  it_has_correct_end_position() {
//    expect(car1.end, new Position(2, 1));
//
//    expect(car2.end, new Position(1, 3));
//  }
//
//  @test
//  it_has_correct_positions() {
//    expect(car1.positions, [new Position(1, 1), new Position(2, 1)]);
//  }
//
//  @test
//  it_moves_correctly() {
//    Car movedCar1 = car1.move(1);
//
//    Car movedCar2 = car2.move(-1);
//
//    expect(movedCar1.start, new Position(2, 1));
//
//    expect(movedCar2.start, new Position(1, 0));
//  }
//
//  @test
//  it_can_be_represented_as_a_string() {
//    expect(
//        car1.toString(),
//        "\n"
//        "X X X X X X \n"
//        "X C X X X X \n"
//        "X C X X X X \n"
//        "X X X X X X \n"
//        "X X X X X X \n"
//        "X X X X X X \n");
//  }
//
//  @test
//  car_can_clash() {
//    expect(car1.clashesWidth(car2), true);
//  }
//
//  @test
//  car_can_avoid_clash() {
//    expect(car1.clashesWidth(car3), false);
//  }
//
//  @test
//  car_can_clash_list() {
//    expect(car1.clashesWithAnyOf([car2]), true);
//  }
//
//  @test
//  car_new_cars() {
//    print(Car.cache);
//    expect(car1.nextCars([]), []);
//  }
//}

main() {
  Car car1 = new Car(length: 2, horizontal: true, start: new Position(2, 2));
  List<Car> others = [
    new Car(length: 2, horizontal: true, start: new Position(2, 0)),
    new Car(length: 2, horizontal: true, start: new Position(4, 0)),
    new Car(length: 2, horizontal: true, start: new Position(1, 1)),
    new Car(length: 2, horizontal: true, start: new Position(3, 1)),
    new Car(length: 3, horizontal: false, start: new Position(5, 1)),
    new Car(length: 2, horizontal: false, start: new Position(4, 2)),
    new Car(length: 2, horizontal: true, start: new Position(0, 3)),
    new Car(length: 2, horizontal: true, start: new Position(2, 3)),
    new Car(length: 2, horizontal: false, start: new Position(0, 4)),
    new Car(length: 2, horizontal: false, start: new Position(3, 4)),
    new Car(length: 2, horizontal: true, start: new Position(4, 4)),
    new Car(length: 2, horizontal: true, start: new Position(4, 5))
  ];
//  Car car3 = new Car(start: new Position(3, 3), length: 2, horizontal: true);

//  print(car1);
  print(car1.nextCars(others));
  print(Car.cache);
}
