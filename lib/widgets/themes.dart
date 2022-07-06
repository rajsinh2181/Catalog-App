// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.blueGrey,
    fontFamily : GoogleFonts.poppins().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,
    buttonColor: greyishblueColor,
    accentColor:  Colors.blueAccent,
    highlightColor: Vx.gray400,
    appBarTheme : AppBarTheme(
      color : Colors.white,
      elevation : 0.0,
      iconTheme : IconThemeData(color : Colors.black), 
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2, 
      titleTextStyle: Theme.of(context).textTheme.headline6,
    )
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    // primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
    fontFamily : GoogleFonts.poppins().fontFamily,
    cardColor: Colors.black,
    canvasColor: darkCreamColor,
    buttonColor: greyishblueColor,
    accentColor : Colors.white,
    highlightColor: Vx.gray400,
    appBarTheme : AppBarTheme(
      color : Colors.black,
      elevation : 0.0,
      iconTheme : IconThemeData(color : Colors.white), 
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2, 
      titleTextStyle: TextStyle(color : Colors.white, fontSize: 20 ),
    )
  );
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color darkBluishColor = Color.fromARGB(255, 30, 54, 86);
  static Color greyishblueColor = Color.fromARGB(255, 96, 116, 142);
  static Color whiteColor = Color.fromARGB(255,255,255,255);
}