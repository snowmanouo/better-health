import 'package:collection/collection.dart';


class Breakfast {
  final String name;
  final double cal;

  const Breakfast({
    required this.name,
    required this.cal,
  });
}

const defaultBreakfastList = [
  Breakfast(name: '豬頭皮', cal: 300.0),
  Breakfast(name: '蔥抓餅', cal: 290.0),
  Breakfast(name: '吐司', cal: 283.0),
  Breakfast(name: '白饅頭', cal: 228.0),
  Breakfast(name: '黑饅頭', cal: 240.0),
  Breakfast(name: '白米粥', cal: 43.0),
  Breakfast(name: '起司蛋餅', cal: 204.0),
  Breakfast(name: '豆漿', cal: 48.0),
  Breakfast(name: '米漿', cal: 47.0),
  Breakfast(name: '紅茶', cal: 30.0),
  Breakfast(name: '柳橙汁', cal: 47.0),
];

double get totalBreakfastCal => allBreakfastRecords.map((e) => e.cal).sum;
List<Breakfast> allBreakfastRecords = [];
