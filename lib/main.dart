// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:table_in_flutter/table_in_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //we call that file in home of materialapp
      home: TableInFlutter(),
    );
  }
}
