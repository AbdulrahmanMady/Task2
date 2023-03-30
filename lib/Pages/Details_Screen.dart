// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Shared/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text("8",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
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
      ),
      body: Column(
        children: [
          Image.asset("assets/img/1.webp"),
          SizedBox(
            height: 11,
          ),
          Text(
            "\$ 12.99 ",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  "New",
                  style: TextStyle(fontSize: 12),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 26,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 26,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 26,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 26,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                  Icon(
                    Icons.star,
                    size: 26,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    size: 26,
                    color: Color.fromARGB(168, 3, 65, 27),
                    // color: Color.fromARGB(255, 186, 30, 30),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Flower Shop",
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Details : ",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
