// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, file_names, avoid_print, unused_import, unnecessary_import, sort_child_properties_last, use_build_context_synchronously, unused_field, body_might_complete_normally_nullable

import 'dart:ui';

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

  final _formkey = GlobalKey<FormState>();

  gotohome(context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                "Welcome",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.lerp(
                        FontWeight.bold, FontWeight.normal, 0.767687)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "UserName can not be empty.";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value == null) {
                          return "password can not be empty";
                        } else if (value.length < 6) {
                          return "Password lenght must be atleast 6.";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changebutton ? 24 : 8),
                child: InkWell(
                  onTap: (() => gotohome(context)),
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
