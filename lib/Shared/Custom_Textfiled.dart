// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';



class MyTextFiled extends StatelessWidget {
 final  TextInputType textInputTypee;
 final  bool isPassword;
 final  String hinttext;
   MyTextFiled({super.key, 
    required this.textInputTypee,
    required this.isPassword,
    required this.hinttext,


   });

  @override
  Widget build(BuildContext context) {
    return TextField(
                  keyboardType: textInputTypee,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    hintText: hinttext,
                    // To delete borders
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    // fillColor: Colors.red,
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                  ));
  }
}