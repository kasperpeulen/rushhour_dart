import 'package:testcase/testcase.dart';
export 'package:testcase/init.dart';

import 'package:rushhour/position.dart';
import 'package:rushhour/car.dart';

import 'package:collection/equality.dart';

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
  it_has_correct_positions() {
    expect(car1.positions, [new Position(1, 1), new Position(2, 1)]);
  }

  @test
  it_moves_correctly() {
    Car movedCar1 = car1.move(1);

    Car movedCar2 = car2.move(-1);

    expect(movedCar1.start, new Position(2, 1));

    expect(movedCar2.start, new Position(1, 0));
  }

  @test
  it_can_be_represented_as_a_string() {
    expect(
        car1.toString(),
        "\n"
        "X X X X X X \n"
        "X C X X X X \n"
        "X C X X X X \n"
        "X X X X X X \n"
        "X X X X X X \n"
        "X X X X X X \n");
  }

  @test
  it_can_be_valid() {
    expect(car1.isValid(), isTrue);
    expect(car2.isValid(), isTrue);
  }

  @test
  it_can_be_inValid() {
    Car invalidCar =
        new Car(start: new Position(5, 5), length: 2, horizontal: true);

    expect(invalidCar.isValid(), isFalse);
    expect(car2.move(5).isValid(), isFalse);
  }

  @test
  length_must_be_2_or_3() {
    expect(() => new Car(start: new Position(0,0), length: 4, horizontal: true),
    throwsA('Car must be of length 2 or 3.')
    );
  }
}
