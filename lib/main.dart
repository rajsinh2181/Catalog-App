// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // home : LoginPage(),
      theme : ThemeData(primarySwatch: Colors.purple),
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness : Brightness.dark,
        primarySwatch: Colors.lightGreen
      ),
      initialRoute : "/home",
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),
      },
    );
  }
}