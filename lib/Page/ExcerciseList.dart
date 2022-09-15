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
  Exercise(name: '跑步', cal: 132.0),
  Exercise(name: 'swimmimg', cal: 132.0),
  Exercise(name: 'tennis', cal: 132.0),
];

double get totalExerciseCal => allExerciseRecords.map((e) => e.cal).sum;
List<Exercise> allExerciseRecords = [];