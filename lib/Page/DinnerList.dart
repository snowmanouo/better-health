import 'package:collection/collection.dart';

class Dinner {
  final String name;
  final double cal;

  const Dinner({
    required this.name,
    required this.cal,
  });
}

List<Dinner> defaultDinnerList = [
  Dinner(name: '蔥抓餅', cal: 290.0),
  Dinner(name: '吐司', cal: 283.0),
  Dinner(name: '白饅頭', cal: 228.0),
  Dinner(name: '黑饅頭', cal: 240.0),
  Dinner(name: '白米粥', cal: 43.0),
  Dinner(name: '起司蛋餅', cal: 204.0),
  Dinner(name: '豆漿', cal: 48.0),
  Dinner(name: '米漿', cal: 47.0),
  Dinner(name: '紅茶', cal: 30.0),
  Dinner(name: '柳橙汁', cal: 47.0),
];

double get totalDinnerCal => allDinnerRecords.map((e) => e.cal).sum;
List<Dinner> allDinnerRecords = [];