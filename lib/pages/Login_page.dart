// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, file_names, avoid_print

import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "Assets/Imges/login_image.png",
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name", labelText: "UserName"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(),
            onPressed: () {
              print("You are Logged In sucessfully!");
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
