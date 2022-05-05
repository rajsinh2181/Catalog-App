// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme : ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme : GoogleFonts.aclonicaTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness : Brightness.dark,
        primarySwatch: Colors.lightGreen
      ),
      initialRoute : "/",
      routes: {
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}