// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Shared/Custom_Textfiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 64,
              ),
              MyTextFiled(
                textInputTypee: TextInputType.emailAddress ,
                isPassword:false ,
                hinttext: "Enter ur emial",
              ),
              const SizedBox(
                height: 33,
              ),
              MyTextFiled(
                textInputTypee:TextInputType.text ,
                isPassword: true,
                hinttext: "Enter Ur Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
