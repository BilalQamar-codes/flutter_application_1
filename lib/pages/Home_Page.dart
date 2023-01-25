// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Container(
        child: Text(
          "Welcome to my app.",
          style: TextStyle(fontSize: 20),
        ),
      )),
      drawer: Drawer(),
    );
  }
}
