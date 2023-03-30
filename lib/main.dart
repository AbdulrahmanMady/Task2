// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tsk2/Pages/Login.dart';
import 'package:tsk2/Pages/home.dart';

import 'Pages/Register.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false,
      home: re()
    );
  }
}