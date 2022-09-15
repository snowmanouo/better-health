import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/Page/Database.dart';

class Database {
  final _db = FirebaseFirestore.instance;

  void newUser(String sex, int born, double height, double weight, double freq, String uid) {
    final user = <String, dynamic>{
      "sex": sex,
      "height": height,
      "weight": weight,
      "born": born,
      "freq": freq,
      "uid": uid,
    };
    // Add a new document with a generated ID
    _db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}')
    );
  }

  void getUser(String uid, Function(OurUser) onSuccess) {
    _db.collection("users").where("uid", isEqualTo: uid).get().then(
          (res) {
        final data = res.docs.first.data();
        onSuccess(OurUser(data));
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }
}

enum Sex {
  male, female
}

class OurUser {
  late String uid;
  late Sex sex; // default is male.
  late int born; // default is 0.
  late double height; // default is 0.
  late double weight; // default is 0.
  late double freq; // default is 1.2.

  int get age => 2022 - born;
  double get bmi => weight / pow(height / 100, 2);
  double get pbf => sex == Sex.male ? (1.2 * bmi + 0.23 * age - 16.2) : (1.2 * bmi + 0.23 * age - 5.4);
  double get mbr => sex == Sex.male ? (10 * weight + 6.25 * height - 5 * age + 5) :  (10 * weight + 6.25 * height - 5 * age - 161);
  double get idealWeight => sex == Sex.male ? (height - 80) * 0.7 : (height - 70) * 0.6;

  OurUser(Map<String, dynamic> map) {
    uid = map["uid"] ?? "";
    sex = map["sex"] == "female" ? Sex.female : Sex.male;
    born = map["born"] ?? 0;
    height = map["height"] ?? 0;
    weight = map["weight"] ?? 0;
    freq = map["freq"] ?? 1.2;
  }

  static OurUser empty() {
    return OurUser(<String, dynamic>{});
  }
}
