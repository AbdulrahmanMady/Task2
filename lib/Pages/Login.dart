// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import '../Shared/Constans.dart';
import '../Shared/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: widget_text_felid.copyWith(
                hintText: "Enter your email",
              )),
          const SizedBox(height: 30),
          TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: widget_text_felid.copyWith(
                hintText: "Enter your password",
              )),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNgreen),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    ));
  }
}