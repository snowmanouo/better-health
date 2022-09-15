class dietList {
  final String dietName;
  final double dietCal;

  const dietList({
    required this.dietName,
    required this.dietCal,
  });
}

const alldietLists = [
  dietList(dietName: '白米飯', dietCal: 132.0),
  dietList(dietName: '饅頭', dietCal: 350.0),
  dietList(dietName: '燕麥片', dietCal: 126.0),
];

