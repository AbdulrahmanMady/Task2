// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/Constans.dart';
import '../Shared/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
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
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: const Text(
                "Sign in",
                style: TextStyle(fontSize: 19),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Do not have an account ?",
                    style: TextStyle(fontSize: 20)),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "ٍٍSign Up",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
