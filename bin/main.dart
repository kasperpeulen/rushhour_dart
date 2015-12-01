import 'package:rushhour/car.dart';
import 'package:rushhour/breath_first_serach.dart' as bfs;

//main() {
//  bfs.main();
//}

main() {
  benchMark(getIntsSyncStar, "sync*");
  benchMark(getIntsStandard, "standard");
}

benchMark(Function function, String name) {
  DateTime before = new DateTime.now();
  for (int i = 0; i < 10000000; i++) {
    function().contains(3);
  }
  DateTime after = new DateTime.now();
  print("$name time: ${after.difference(before)}");
}

Iterable<int> getIntsSyncStar() sync* {
  yield 1;
  yield 2;
}

List<int> getIntsStandard() {
  List<int> list = new List();
  list.add(1);
  list.add(2);
  return list;
}