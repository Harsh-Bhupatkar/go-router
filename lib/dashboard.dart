import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});


  @override
  Widget build(BuildContext context) {
    String nm="Harsssh";
    return  Scaffold(
      appBar: AppBar(
        title: Text("Dash Board"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              //context.go("/profile/$name");// with parameters routing
              context.goNamed("profile",pathParameters:{ "name":nm}); // name given to routes with parameters
              context.pushNamed("profile",pathParameters:{ "name":nm}); // name given to routes with parameters

              },
            child: Text("Profile")),
      ),
    );;
  }
}
