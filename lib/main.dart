import 'package:flutter/material.dart';
import 'package:flutter_fruits_vegetables/view/fruits_brocoli.dart';
import 'package:flutter_fruits_vegetables/view/fruits_home.dart';
import 'package:flutter_fruits_vegetables/view/fruits_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: FruitsInfo(),
    );
  }
}
