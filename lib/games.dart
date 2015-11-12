import 'package:rushhour/car.dart';
import 'package:rushhour/board.dart';
import 'package:rushhour/position.dart';


final easyGame = new Board(cars: [
  new Car(length: 2, horizontal: true, start: new Position(2, 2)),
  new Car(length: 3, horizontal: false, start: new Position(4, 0)),
  new Car(length: 2, horizontal: false, start: new Position(3, 3)),
  new Car(length: 2, horizontal: true, start: new Position(4, 4)),
], goal: new Goal(0, new Position(5, 2)));


final hardestGame = new Board(cars: [
  new Car(length: 2, horizontal: true, start: new Position(2, 2)),
  new Car(length: 3, horizontal: true, start: new Position(0, 0)),
  new Car(length: 2, horizontal: false, start: new Position(3, 0)),
  new Car(length: 3, horizontal: false, start: new Position(4, 0)),
  new Car(length: 3, horizontal: false, start: new Position(5, 0)),
  new Car(length: 2, horizontal: false, start: new Position(0, 1)),
  new Car(length: 2, horizontal: true, start: new Position(1, 1)),
  new Car(length: 2, horizontal: true, start: new Position(0, 3)),
  new Car(length: 2, horizontal: false, start: new Position(2, 3)),
  new Car(length: 2, horizontal: false, start: new Position(1, 4)),
  new Car(length: 2, horizontal: true, start: new Position(4, 4)),
  new Car(length: 2, horizontal: true, start: new Position(2, 5)),
  new Car(length: 2, horizontal: true, start: new Position(4, 5)),
], goal: new Goal(0,  new Position(5, 2)));


final game2 = new Board(cars: [
  new Car(length: 2, horizontal: true, start: new Position(2, 2)),
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
  new Car(length: 2, horizontal: true, start: new Position(4, 5)),
], goal: new Goal(0,  new Position(5, 2)));

final Board game7 = new Board(cars: [
  new Car(length: 2, horizontal: true, start: new Position(2, 5)),
  new Car(length: 2, horizontal: false, start: new Position(0, 0)),
  new Car(length: 3, horizontal: true, start: new Position(0, 2)),
  new Car(length: 3, horizontal: false, start: new Position(0, 3)),
  new Car(length: 3, horizontal: true, start: new Position(0, 6)),
  new Car(length: 3, horizontal: true, start: new Position(0, 7)),
  new Car(length: 2, horizontal: true, start: new Position(0, 8)),
  new Car(length: 3, horizontal: false, start: new Position(1, 3)),
  new Car(length: 2, horizontal: true, start: new Position(1, 11)),
  new Car(length: 3, horizontal: true, start: new Position(2, 4)),
  new Car(length: 2, horizontal: false, start: new Position(2, 8)),
  new Car(length: 2, horizontal: true, start: new Position(3, 2)),
  new Car(length: 2, horizontal: false, start: new Position(3, 6)),
  new Car(length: 3, horizontal: true, start: new Position(3, 8)),
  new Car(length: 3, horizontal: true, start: new Position(3, 9)),
  new Car(length: 3, horizontal: true, start: new Position(3, 11)),
  new Car(length: 2, horizontal: false, start: new Position(4, 5)),
  new Car(length: 2, horizontal: true, start: new Position(4, 7)),
  new Car(length: 2, horizontal: false, start: new Position(5, 1)),
  new Car(length: 2, horizontal: false, start: new Position(5, 3)),
  new Car(length: 2, horizontal: false, start: new Position(5, 5)),
  new Car(length: 2, horizontal: false, start: new Position(6, 0)),
  new Car(length: 3, horizontal: false, start: new Position(6, 2)),
  new Car(length: 3, horizontal: false, start: new Position(6, 6)),
  new Car(length: 3, horizontal: false, start: new Position(6, 9)),
  new Car(length: 3, horizontal: true, start: new Position(7, 0)),
  new Car(length: 2, horizontal: true, start: new Position(7, 2)),
  new Car(length: 2, horizontal: true, start: new Position(7, 3)),
  new Car(length: 3, horizontal: true, start: new Position(7, 4)),
  new Car(length: 2, horizontal: false, start: new Position(7, 6)),
  new Car(length: 3, horizontal: true, start: new Position(7, 8)),
  new Car(length: 2, horizontal: true, start: new Position(7, 11)),
  new Car(length: 2, horizontal: true, start: new Position(8, 9)),
  new Car(length: 2, horizontal: true, start: new Position(9, 3)),
  new Car(length: 2, horizontal: false, start: new Position(9, 6)),
  new Car(length: 2, horizontal: false, start: new Position(9, 10)),
  new Car(length: 2, horizontal: true, start: new Position(10, 0)),
  new Car(length: 2, horizontal: false, start: new Position(10, 1)),
  new Car(length: 2, horizontal: true, start: new Position(10, 6)),
  new Car(length: 2, horizontal: true, start: new Position(10, 7)),
  new Car(length: 3, horizontal: false, start: new Position(10, 9)),
  new Car(length: 2, horizontal: false, start: new Position(11, 1)),
  new Car(length: 2, horizontal: false, start: new Position(11, 8)),
  new Car(length: 2, horizontal: false, start: new Position(11, 10)),
], goal: new Goal(0,  new Position(11, 5)));

//final Board game7pre = new Board(cars: [
//  new Car(length: 2, horizontal: true, start: new Position(2, 5), isRedCar: true),
//  new Car(length: 2, horizontal: false, start: new Position(0, 0)),
//  new Car(length: 3, horizontal: true, start: new Position(0, 2)),
//  new Car(length: 3, horizontal: false, start: new Position(0, 3)),
//  new Car(length: 3, horizontal: true, start: new Position(0, 6)),
//  new Car(length: 3, horizontal: true, start: new Position(0, 7)),
//  new Car(length: 2, horizontal: true, start: new Position(0, 8)),
//  new Car(length: 3, horizontal: false, start: new Position(1, 3)),
//  new Car(length: 2, horizontal: true, start: new Position(1, 11)),
//  new Car(length: 3, horizontal: true, start: new Position(2, 4)),
//
//  new Car(length: 2, horizontal: false, start: new Position(2, 8)),
//  new Car(length: 2, horizontal: true, start: new Position(3, 2)),
//  new Car(length: 2, horizontal: false, start: new Position(3, 6)),
//  new Car(length: 3, horizontal: true, start: new Position(3, 8)),
//  new Car(length: 3, horizontal: true, start: new Position(3, 9)),
//  new Car(length: 3, horizontal: true, start: new Position(3, 11)),
//  new Car(length: 2, horizontal: false, start: new Position(4, 5)),
//  new Car(length: 2, horizontal: true, start: new Position(4, 7)),
//  new Car(length: 2, horizontal: false, start: new Position(5, 1)),
//  new Car(length: 2, horizontal: false, start: new Position(5, 3)),
//  new Car(length: 2, horizontal: false, start: new Position(5, 5)),
//  new Car(length: 2, horizontal: false, start: new Position(6, 0)),
//  new Car(length: 3, horizontal: false, start: new Position(6, 2)),
//  new Car(length: 3, horizontal: false, start: new Position(6, 6)),
//  new Car(length: 3, horizontal: false, start: new Position(6, 9)),
//  new Car(length: 3, horizontal: true, start: new Position(1, 0)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 2)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 3)),
//  new Car(length: 3, horizontal: true, start: new Position(7, 4)),
//  new Car(length: 2, horizontal: false, start: new Position(7, 6)),
//  new Car(length: 3, horizontal: true, start: new Position(7, 8)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 11)),
//  new Car(length: 2, horizontal: true, start: new Position(8, 9)),
//  new Car(length: 2, horizontal: true, start: new Position(9, 3)),
//  new Car(length: 2, horizontal: false, start: new Position(9, 6)),
//  new Car(length: 2, horizontal: false, start: new Position(9, 10)),
//  new Car(length: 2, horizontal: true, start: new Position(8, 0)),
//  new Car(length: 2, horizontal: false, start: new Position(10, 1)),
//  new Car(length: 2, horizontal: true, start: new Position(10, 6)),
//  new Car(length: 2, horizontal: true, start: new Position(10, 7)),
//  new Car(length: 3, horizontal: false, start: new Position(10, 9)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 1)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 8)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 10)),
//], goal: new Goal(0,  new Position(11, 5));
//
//
//final Board game7post = new Board(cars: [
//  new Car(start: new Position(2, 5), horizontal: true, length: 2)
//  , new Car(start: new Position(0, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(0, 2), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(0, 6), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 7), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 8), horizontal: true, length: 2)
//  , new Car(start: new Position(1, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(1, 11), horizontal: true, length: 2)
//  , new Car(start: new Position(2, 4), horizontal: true, length: 3)
//  , new Car(start: new Position(2, 8), horizontal: false, length: 2)
////  , new Car(start: new Position(7, 2), horizontal: true, length: 2)
//  , new Car(start: new Position(3, 6), horizontal: false, length: 2)
//  , new Car(start: new Position(3, 8), horizontal: true, length: 3)
//  , new Car(start: new Position(3, 9), horizontal: true, length: 3)
//  , new Car(start: new Position(3, 11), horizontal: true, length: 3)
//  , new Car(start: new Position(4, 5), horizontal: false, length: 2)
//  , new Car(start: new Position(4, 7), horizontal: true, length: 2)
//  , new Car(start: new Position(5, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(5, 3), horizontal: false, length: 2)
//  , new Car(start: new Position(5, 5), horizontal: false, length: 2)
//  , new Car(start: new Position(6, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(6, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(6, 6), horizontal: false, length: 3)
//  , new Car(start: new Position(6, 9), horizontal: false, length: 3)
//  , new Car(start: new Position(1, 0), horizontal: true, length: 3)
////  , new Car(start: new Position(9, 2), horizontal: true, length: 2)
////  , new Car(start: new Position(7, 3), horizontal: true, length: 2)
////  , new Car(start: new Position(7, 4), horizontal: true, length: 3)
////  , new Car(start: new Position(7, 6), horizontal: false, length: 2)
////  , new Car(start: new Position(7, 8), horizontal: true, length: 3)
////  , new Car(start: new Position(7, 11), horizontal: true, length: 2)
////  , new Car(start: new Position(8, 9), horizontal: true, length: 2)
////  , new Car(start: new Position(9, 3), horizontal: true, length: 2)
////  , new Car(start: new Position(9, 6), horizontal: false, length: 2)
////  , new Car(start: new Position(9, 10), horizontal: false, length: 2)
////  , new Car(start: new Position(8, 0), horizontal: true, length: 2)
////  , new Car(start: new Position(10, 0), horizontal: false, length: 2)
////  , new Car(start: new Position(10, 6), horizontal: true, length: 2)
////  , new Car(start: new Position(10, 7), horizontal: true, length: 2)
////  , new Car(start: new Position(10, 9), horizontal: false, length: 3)
////  , new Car(start: new Position(11, 1), horizontal: false, length: 2)
////  , new Car(start: new Position(11, 8), horizontal: false, length: 2)
////  , new Car(start: new Position(11, 10), horizontal: false, length: 2)
//], goal: new Goal(0,  new Position(11, 5));
//


final Board game4 = new Board(cars: [
  new Car(length: 2, horizontal: true, start: new Position(1, 4)),
  new Car(length: 2, horizontal: false, start: new Position(0, 0)),
  new Car(length: 3, horizontal: true, start: new Position(1, 0)),
  new Car(length: 3, horizontal: false, start: new Position(5, 0)),
  new Car(length: 3, horizontal: false, start: new Position(3, 1)),
  new Car(length: 3, horizontal: true, start: new Position(6, 1)),
  new Car(length: 3, horizontal: false, start: new Position(8, 2)),
  new Car(length: 2, horizontal: true, start: new Position(0, 3)),
  new Car(length: 3, horizontal: true, start: new Position(5, 3)),
  new Car(length: 2, horizontal: false, start: new Position(0, 4)),
  new Car(length: 2, horizontal: false, start: new Position(3, 4)),
  new Car(length: 3, horizontal: false, start: new Position(2, 5)),
  new Car(length: 3, horizontal: true, start: new Position(5, 5)),
  new Car(length: 3, horizontal: false, start: new Position(8, 5)),
  new Car(length: 2, horizontal: true, start: new Position(0, 6)),
  new Car(length: 2, horizontal: false, start: new Position(3, 6)),
  new Car(length: 2, horizontal: true, start: new Position(4, 6)),
  new Car(length: 2, horizontal: false, start: new Position(0, 7)),
  new Car(length: 2, horizontal: false, start: new Position(4, 7)),
  new Car(length: 3, horizontal: true, start: new Position(1, 8)),
  new Car(length: 2, horizontal: true, start: new Position(5, 8)),
  new Car(length: 2, horizontal: true, start: new Position(7, 8)),
], goal: new Goal(0,  new Position(8, 4)));

//Board gameApp = new Board(cars: [
//  new Car(length: 2, horizontal: true, start: new Position(4, 2), isRedCar: true),
//  new Car(length: 2, horizontal: false, start: new Position(0, 0)),
//  new Car(length: 3, horizontal: false, start: new Position(0, 3)),
//  new Car(length: 3, horizontal: false, start: new Position(1, 3)),
//  new Car(length: 2, horizontal: true, start: new Position(2, 0)),
//  new Car(length: 2, horizontal: false, start: new Position(2, 2)),
//  new Car(length: 2, horizontal: true, start: new Position(2, 4)),
//  new Car(length: 2, horizontal: true, start: new Position(2, 5)),
//  new Car(length: 2, horizontal: false, start: new Position(3, 2)),
//  new Car(length: 2, horizontal: true, start: new Position(4, 3)),
//  new Car(length: 2, horizontal: true, start: new Position(4, 4)),
//  new Car(length: 2, horizontal: true, start: new Position(4, 5)),
//  new Car(length: 2, horizontal: false, start: new Position(5, 0)),
//], goal: new Goal(0,  new Position(1, 2));
//
//Board game7b = new Board(cars: [
//  new Car(start: new Position(4, 5), horizontal: true, length: 2),
//  new Car(start: new Position(0, 0), horizontal: false, length: 2),
//  new Car(start: new Position(2, 2), horizontal: true, length: 3),
//  new Car(start: new Position(0, 3), horizontal: false, length: 3),
//  new Car(start: new Position(0, 6), horizontal: true, length: 3),
//  new Car(start: new Position(0, 7), horizontal: true, length: 3),
//  new Car(start: new Position(0, 8), horizontal: true, length: 2),
//  new Car(start: new Position(1, 1), horizontal: false, length: 3),
//  new Car(start: new Position(0, 11), horizontal: true, length: 2),
//  new Car(start: new Position(1, 4), horizontal: true, length: 3),
//  new Car(start: new Position(2, 10), horizontal: false, length: 2),
//  new Car(start: new Position(5, 2), horizontal: true, length: 2),
//  new Car(start: new Position(3, 6), horizontal: false, length: 2),
//  new Car(start: new Position(2, 8), horizontal: true, length: 3),
//  new Car(start: new Position(2, 9), horizontal: true, length: 3),
//  new Car(start: new Position(3, 11), horizontal: true, length: 3),
//  new Car(start: new Position(4, 3), horizontal: false, length: 2),
//  new Car(start: new Position(4, 7), horizontal: true, length: 2),
//  new Car(start: new Position(5, 0), horizontal: false, length: 2),
//  new Car(start: new Position(5, 3), horizontal: false, length: 2),
//  new Car(start: new Position(5, 8), horizontal: false, length: 2),
//  new Car(start: new Position(6, 0), horizontal: false, length: 2),
//  new Car(start: new Position(6, 3), horizontal: false, length: 3),
//  new Car(start: new Position(6, 6), horizontal: false, length: 3),
//  new Car(start: new Position(6, 9), horizontal: false, length: 3),
//    new Car(length: 3, horizontal: true, start: new Position(7, 0)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 2)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 3)),
//  new Car(length: 3, horizontal: true, start: new Position(7, 4)),
//  new Car(length: 2, horizontal: false, start: new Position(7, 6)),
//  new Car(length: 3, horizontal: true, start: new Position(7, 8)),
//  new Car(length: 2, horizontal: true, start: new Position(7, 11)),
//  new Car(length: 2, horizontal: true, start: new Position(8, 9)),
//  new Car(length: 2, horizontal: true, start: new Position(9, 3)),
//  new Car(length: 2, horizontal: false, start: new Position(9, 6)),
//  new Car(length: 2, horizontal: false, start: new Position(9, 10)),
//  new Car(length: 2, horizontal: true, start: new Position(10, 0)),
//  new Car(length: 2, horizontal: false, start: new Position(10, 1)),
//  new Car(length: 2, horizontal: true, start: new Position(10, 6)),
//  new Car(length: 2, horizontal: true, start: new Position(10, 7)),
//  new Car(length: 3, horizontal: false, start: new Position(10, 9)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 1)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 8)),
//  new Car(length: 2, horizontal: false, start: new Position(11, 10)),
//], goal: new Goal(0,  new Position(9, 4));
//
//var game7c = new Board(cars: [
//  new Car(start: new Position(2, 5), horizontal: true, length: 2)
//  , new Car(start: new Position(0, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(1, 2), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(0, 6), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 7), horizontal: true, length: 3)
//  , new Car(start: new Position(0, 8), horizontal: true, length: 2)
//  , new Car(start: new Position(1, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(0, 11), horizontal: true, length: 2)
//  , new Car(start: new Position(2, 4), horizontal: true, length: 3)
//  , new Car(start: new Position(2, 10), horizontal: false, length: 2)
//  , new Car(start: new Position(4, 2), horizontal: true, length: 2)
//  , new Car(start: new Position(3, 6), horizontal: false, length: 2)
//  , new Car(start: new Position(2, 8), horizontal: true, length: 3)
//  , new Car(start: new Position(2, 9), horizontal: true, length: 3)
//  , new Car(start: new Position(3, 11), horizontal: true, length: 3)
//  , new Car(start: new Position(4, 5), horizontal: false, length: 2)
//  , new Car(start: new Position(4, 7), horizontal: true, length: 2)
//  , new Car(start: new Position(5, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(5, 3), horizontal: false, length: 2)
//  , new Car(start: new Position(5, 8), horizontal: false, length: 2)
//  , new Car(start: new Position(6, 0), horizontal: false, length: 2)
//  , new Car(start: new Position(6, 3), horizontal: false, length: 3)
//  , new Car(start: new Position(6, 6), horizontal: false, length: 3)
//  , new Car(start: new Position(6, 9), horizontal: false, length: 3)
//  , new Car(start: new Position(1, 0), horizontal: true, length: 3)
//  , new Car(start: new Position(7, 2), horizontal: true, length: 2)
//  , new Car(start: new Position(7, 3), horizontal: true, length: 2)
//  , new Car(start: new Position(7, 4), horizontal: true, length: 3)
//  , new Car(start: new Position(7, 6), horizontal: false, length: 2)
//  , new Car(start: new Position(7, 8), horizontal: true, length: 3)
//  , new Car(start: new Position(7, 11), horizontal: true, length: 2)
//  , new Car(start: new Position(8, 9), horizontal: true, length: 2)
//  , new Car(start: new Position(9, 3), horizontal: true, length: 2)
//  , new Car(start: new Position(9, 6), horizontal: false, length: 2)
//  , new Car(start: new Position(9, 10), horizontal: false, length: 2)
//  , new Car(start: new Position(10, 0), horizontal: true, length: 2)
//  , new Car(start: new Position(10, 1), horizontal: false, length: 2)
//  , new Car(start: new Position(10, 6), horizontal: true, length: 2)
//  , new Car(start: new Position(10, 7), horizontal: true, length: 2)
//  , new Car(start: new Position(10, 9), horizontal: false, length: 3)
//  , new Car(start: new Position(11, 1), horizontal: false, length: 2)
//  , new Car(start: new Position(11, 8), horizontal: false, length: 2)
//  , new Car(start: new Position(11, 10), horizontal: false, length: 2)
//]);
//
//var game7d = new Board(cars:
//[
//new Car(start: new Position(2, 5), horizontal: true, length: 2)
//, new Car(start: new Position(0, 0), horizontal: false, length: 2)
//, new Car(start: new Position(0, 2), horizontal: true, length: 3)
//, new Car(start: new Position(0, 3), horizontal: false, length: 3)
//, new Car(start: new Position(0, 6), horizontal: true, length: 3)
//, new Car(start: new Position(0, 7), horizontal: true, length: 3)
//, new Car(start: new Position(0, 8), horizontal: true, length: 2)
//, new Car(start: new Position(1, 3), horizontal: false, length: 3)
//, new Car(start: new Position(1, 11), horizontal: true, length: 2)
//, new Car(start: new Position(2, 4), horizontal: true, length: 3)
//, new Car(start: new Position(2, 8), horizontal: false, length: 2)
//, new Car(start: new Position(7, 2), horizontal: true, length: 2)
//, new Car(start: new Position(3, 6), horizontal: false, length: 2)
//, new Car(start: new Position(3, 8), horizontal: true, length: 3)
//, new Car(start: new Position(3, 9), horizontal: true, length: 3)
//, new Car(start: new Position(3, 11), horizontal: true, length: 3)
//, new Car(start: new Position(4, 5), horizontal: false, length: 2)
//, new Car(start: new Position(4, 7), horizontal: true, length: 2)
//, new Car(start: new Position(5, 0), horizontal: false, length: 2)
//, new Car(start: new Position(5, 3), horizontal: false, length: 2)
//, new Car(start: new Position(5, 5), horizontal: false, length: 2)
//, new Car(start: new Position(6, 0), horizontal: false, length: 2)
//, new Car(start: new Position(6, 3), horizontal: false, length: 3)
//, new Car(start: new Position(6, 6), horizontal: false, length: 3)
//, new Car(start: new Position(6, 9), horizontal: false, length: 3)
//, new Car(start: new Position(2, 0), horizontal: true, length: 3)
//, new Car(start: new Position(9, 2), horizontal: true, length: 2)
//, new Car(start: new Position(7, 3), horizontal: true, length: 2)
//, new Car(start: new Position(7, 4), horizontal: true, length: 3)
//, new Car(start: new Position(7, 6), horizontal: false, length: 2)
//, new Car(start: new Position(7, 8), horizontal: true, length: 3)
//, new Car(start: new Position(7, 11), horizontal: true, length: 2)
//, new Car(start: new Position(8, 9), horizontal: true, length: 2)
//, new Car(start: new Position(9, 3), horizontal: true, length: 2)
//, new Car(start: new Position(9, 6), horizontal: false, length: 2)
//, new Car(start: new Position(9, 10), horizontal: false, length: 2)
//, new Car(start: new Position(8, 0), horizontal: true, length: 2)
//, new Car(start: new Position(10, 0), horizontal: false, length: 2)
//, new Car(start: new Position(10, 6), horizontal: true, length: 2)
//, new Car(start: new Position(10, 7), horizontal: true, length: 2)
//, new Car(start: new Position(10, 9), horizontal: false, length: 3)
//, new Car(start: new Position(11, 1), horizontal: false, length: 2)
//, new Car(start: new Position(11, 8), horizontal: false, length: 2)
//, new Car(start: new Position(11, 10), horizontal: false, length: 2)]
//);