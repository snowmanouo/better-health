import 'package:flutter/material.dart';

class window extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show AlertDialog"),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

// Show AlertDialog
showAlertDialog(BuildContext context) {
  // Init
  AlertDialog dialog = AlertDialog(
    title: Text("AlertDialog component"),
    actions: [
      ElevatedButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
      ElevatedButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
    ],
  );

  // Show the dialog
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
  );
}