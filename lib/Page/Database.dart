import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  void getUser(String uid, Function(Map<String, dynamic>) onSuccess) {
    _db.collection("users").where("uid", isEqualTo: uid).get().then(
          (res) {
            final data = res.docs.first.data() as Map<String, dynamic>;
            onSuccess(data);
            print("!!!!!!!! $data");
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }
}
