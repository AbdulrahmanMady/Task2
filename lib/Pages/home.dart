
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
          children: [Text("\$13"), Text("\$13")],
        ),
      ],
      backgroundColor: appbarGreen,
      title: const Text("Home"),
    ));
  }
}