import 'package:flutter/material.dart';
import 'package:tsk2/Pages/Login.dart';

import 'Pages/Register.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Register(),
    );
  }
}