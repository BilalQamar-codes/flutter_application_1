// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Login_Page(),
        MyRoutes.homeroute: ((context) => Homepage()),
        MyRoutes.loginroute: ((context) => Login_Page())
      },
    );
  }
}
