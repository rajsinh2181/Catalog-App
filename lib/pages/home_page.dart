import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class HomePage extends StatelessWidget {
  final double days = 3;
   final String name = "raj";
    final bool isMale = true;
    final num temp = 30.5;
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("catalog"),
      ),
      body : Center(
        child: Container(
            child: Text("hello $name $temp and"),
        ),
      ),
      drawer : MyDrawer(),
    );
  }
}