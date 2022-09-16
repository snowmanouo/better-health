import 'package:collection/collection.dart';

class Lunch {
  final String name;
  final double cal;

  const Lunch({
    required this.name,
    required this.cal,
  });
}

const defaultLunchList = [
  Lunch(name: '蔥抓餅', cal: 290.0),
  Lunch(name: '吐司', cal: 283.0),
  Lunch(name: '白饅頭', cal: 228.0),
  Lunch(name: '黑饅頭', cal: 240.0),
  Lunch(name: '白米粥', cal: 43.0),
  Lunch(name: '起司蛋餅', cal: 204.0),
  Lunch(name: '豆漿', cal: 48.0),
  Lunch(name: '米漿', cal: 47.0),
  Lunch(name: '紅茶', cal: 30.0),
  Lunch(name: '柳橙汁', cal: 47.0),
];

double get totalLunchCal => allLunchRecords.map((e) => e.cal).sum;
List<Lunch> allLunchRecords = [];