import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/dashboard.dart';
import 'package:router/error.dart';
import 'package:router/profile.dart';

void main() {
  runApp(const MyApp());
}
bool isLogin=false;
GoRouter _routes = GoRouter(
  errorBuilder: (context, state) => errorPage(), // error page if error occurs
  routes: [
  GoRoute(
    name: "dashboard", //name given to routes
    path: '/',
    builder: (context, state) => Dashboard(),

  ),
  GoRoute(
    name: "profile", //name given to routes
    path: '/profile/:name', // parameters using routers
    builder: (context, state) {
     // return Profile(
     //      name: state.pathParameters["name"]!// path parameters,
     //  );

      String? name= state.uri.queryParameters['name'];
      return Profile(name: name ?? "Guest");
    }

  ),
],

);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _routes,
    );
  }
}
