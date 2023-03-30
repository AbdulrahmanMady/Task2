
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, empty_constructor_bodies

import 'package:flutter/material.dart';

import '../Shared/colors.dart';
import 'Details_Screen.dart';
class Item {
  String imgPath;
  double price;

  Item({required this.imgPath, required this.price});

}

class Home extends StatelessWidget {
  final List<Item> items = [
    Item(price: 12.99, imgPath: "assets/img/1.webp"),
    Item(price: 12.99, imgPath: "assets/img/2.webp"),
    Item(price: 12.99, imgPath: "assets/img/3.webp"),
    Item(price: 12.99, imgPath: "assets/img/4.webp"),
    Item(price: 12.99, imgPath: "assets/img/5.webp"),
    Item(price: 12.99, imgPath: "assets/img/6.webp"),
    Item(price: 12.99, imgPath: "assets/img/7.webp"),
    Item(price: 12.99, imgPath: "assets/img/8.webp"),
  ];
  
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                 onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ),
                    );
                  },,
                  child: GridTile(
                      // ignore: sort_child_properties_last
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            left: 0,
                            top: -3,
                            bottom: -9,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(55),
                               child: Image.asset(items[index].imgPath)),

                          ),
                        ],
                      ),
                      footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                        trailing: IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {},
                            icon: Icon(Icons.add)),

                        leading: Text("\$12.99"),

                        title: Text(
                          "",
                        ),
                      )),
                );
              }),
        ),
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
                title: Text("Home"), leading: Icon(Icons.home), onTap: () {}),
            ListTile(
                title: Text("My products"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {}),
            ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {}),
                ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {}),
                  Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by abdo mady © 2023",
                      style: TextStyle(fontSize: 16)),
                )
        
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
      ),
    );
  }
}