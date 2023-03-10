import 'package:flutter/material.dart';
import 'package:simplone/pages/brief_list.dart';
import 'package:simplone/pages/home.dart';
import 'package:simplone/pages/login.dart';
import 'package:simplone/pages/signup.dart';
import 'package:simplone/pages/welcome.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/home": (context) => Home(),
        "/brief": (context) => BriefList(),
      },
      
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primarySwatch: Colors.orange
      ),
    );
  }
}
