import 'package:collection/collection.dart';

class Snack {
  final String name;
  final double cal;

  const Snack({
    required this.name,
    required this.cal,
  });
}

const defaultSnackList = [
  Snack(name: '蔥抓餅', cal: 290.0),
  Snack(name: '吐司', cal: 283.0),
  Snack(name: '白饅頭', cal: 228.0),
  Snack(name: '黑饅頭', cal: 240.0),
  Snack(name: '白米粥', cal: 43.0),
  Snack(name: '起司蛋餅', cal: 204.0),
  Snack(name: '豆漿', cal: 48.0),
  Snack(name: '米漿', cal: 47.0),
  Snack(name: '紅茶', cal: 30.0),
  Snack(name: '柳橙汁', cal: 47.0),
];

double get totalSnackCal => allSnackRecords.map((e) => e.cal).sum;
List<Snack> allSnackRecords = [];