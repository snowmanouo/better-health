import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'Page/HealthPage.dart';
import 'Page/Page1.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() => runApp(ProjectApp());

class ProjectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform
        ),
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: new ThemeData
              (
              primaryColor: appGreenColor,
            ),
            home: HealthPage(),
          );
        },
    );
  }
}






