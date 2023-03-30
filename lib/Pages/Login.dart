import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(children: [
        TextField(
    keyboardType: TextInputType.text,
    obscureText: true,
    decoration: InputDecoration(
      hintText: "Enter Your Password : ",
      // To delete borders
      enabledBorder: OutlineInputBorder(borderSide: Divider.createBorderSide(context),),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,),),
      // fillColor: Colors.red,
      filled: true,
      contentPadding: const EdgeInsets.all(8),
    ))
      ],
      ),
      ),
    );
  }
}