import 'package:blooddonation/screens/entryPage.dart';
import 'package:blooddonation/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class Person {
  String name;
  String div;
  String roll;
  String city;
  String why;
  String blood;

  Person(
    this.name,
    this.div,
    this.roll,
    this.city,
    this.why,
    this.blood,
  );
}

class GlobalData extends ChangeNotifier {
  Person _person = Person('', '', '', '', '', '');

  Person get person => _person;

  void setPerson(
      {String name = "",
      String div = "",
      String roll = "",
      String city = "",
      String why = "",
      String blood = ""}) {
    _person = Person(name, div, roll, city, why, blood);
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalData(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
