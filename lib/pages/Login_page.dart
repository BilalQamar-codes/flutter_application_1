// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, file_names, avoid_print, unused_import, unnecessary_import, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  String password = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "Assets/Imges/login_image.png",
              height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
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
                    onChanged: ((value) {
                      name = value;
                      setState(() {});
                    }),
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    onChanged: ((value) {
                      password = value;
                      setState(() {});
                    }),
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // ElevatedButton(
            //   style: TextButton.styleFrom(minimumSize: Size(100, 35)),
            //   onPressed: () {
            //
            //   },
            //   child: Text("Login"),
            // ),
            InkWell(
              onTap: () async {
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changebutton ? 50 : 100,
                alignment: Alignment.center,
                child: changebutton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changebutton ? 22 : 8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
