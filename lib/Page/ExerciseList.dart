import 'package:collection/collection.dart';

class Exercise {
  final String name;
  final double cal;

  const Exercise({
    required this.name,
    required this.cal,
  });
}

const defaultExerciseList = [
  Exercise(name: '騎腳踏車', cal: 180.0),
  Exercise(name: '走路', cal: 186.0),
  Exercise(name: '高爾夫球', cal: 222.0),
  Exercise(name: '快走', cal: 264.0),
  Exercise(name: '乒乓球', cal: 318.0),
  Exercise(name: '直排輪', cal: 480.0),
  Exercise(name: '跳繩', cal: 540.0),
  Exercise(name: '自由式游泳', cal: 1050.0),
  Exercise(name: '蛙式游泳', cal: 708.0),
  Exercise(name: '慢跑', cal: 564.0),
];

double get totalExerciseCal => allExerciseRecords.map((e) => e.cal).sum;
List<Exercise> allExerciseRecords = [];