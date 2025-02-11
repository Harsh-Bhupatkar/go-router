import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  String name;
  Profile({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
