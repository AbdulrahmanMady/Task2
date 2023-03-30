
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      actions: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("\$13", style: TextStyle(fontSize: 18)),
            Text("\$13")
          ],
        ),
      ],
      backgroundColor: appbarGreen,
      title: Text("Home"),
    ));
  }
}