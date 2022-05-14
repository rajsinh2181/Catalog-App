// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class HomePage extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("catalog app"),
      ),
      body : Center(
        child: Container(
            child: Text(""),
        ),
      ),
      drawer : MyDrawer(),
    );
  }
}