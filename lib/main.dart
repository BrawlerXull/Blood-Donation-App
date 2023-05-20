import 'package:blooddonation/screens/entryPage.dart';
import 'package:blooddonation/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class GlobalData extends ChangeNotifier {
  // var data = {'blood': 'A'};
  List<String> group = [
    'A',
  ];

  // late String data1;

  // GlobalData() {
  //   data1 = json.encode(data);
  // }

  // void updateData(String newData) {
  //   data = newData;
  //   notifyListeners();
  // }
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
