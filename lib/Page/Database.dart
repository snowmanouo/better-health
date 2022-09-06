import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final _db = FirebaseFirestore.instance;

  void newUser(String sex, int born, double height, double freq, String uid ) {
    final user = <String, dynamic>{
      "sex": sex,
      "height": height,
      "born": born,
      "freq": freq,
      "uid": uid,
    };
    // Add a new document with a generated ID
    _db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}')
    );
  }
}