import 'package:testcase/testcase.dart';
export 'package:testcase/init.dart';

import 'package:rushhour/position.dart';

class PositionTest implements TestCase {
  Position pos1;
  Position pos2;
  Position pos3;

  setUp() {
    pos1 = new Position(1, 3);
    pos2 = new Position(3, 2);
    pos3 = new Position(1, 3);
  }

  tearDown() {}

  @test
  positions_can_be_equal() {
    expect(pos1, pos3);
  }

  @test
  positions_can_be_added() {
    expect(pos1 + pos2, new Position(4, 5));
  }
}
