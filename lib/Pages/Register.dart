// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/Constans.dart';
import '../Shared/colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                      // ignore: sort_child_properties_last
                      child: Text("8",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$13", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ],
        backgroundColor: appbarGreen,
        title: Text("Home"),
      )),
    );
  }
}