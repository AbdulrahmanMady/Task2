
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
   Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/Avatar-No-Background.png"),
                        fit: BoxFit.cover)),
                currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage:
                        AssetImage("assets\img\0.jpg")),
                accountEmail: Text("AbdoMady@gmail.com"),
                accountName: Text("Abdo Mady"),
              ),
              ListTile(
                  title: Text("Home"), leading: Icon(Icons.home), onTap: () {})
            ]),
          ),
          appBar: AppBar(
            actions: [
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 24,
                        child: Container(
                            // ignore: sort_child_properties_last
                            child: Text("8",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 0, 0))),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(211, 164, 255, 193),
                                shape: BoxShape.circle)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart)),
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