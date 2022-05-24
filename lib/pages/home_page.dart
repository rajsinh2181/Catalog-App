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
      
      body : Container(
        child: Text(context.runtimeType.toString()),
        height : 350,
        width : 350,
        color : Colors.green,
        constraints: BoxConstraints(
          maxHeight : 200,
          minHeight: 70,
          minWidth: 70,
          maxWidth: 200,
        ),
        
      ),
      
      
      drawer : MyDrawer(),
    );
  }
}


/*child: Container(
        alignment: Alignment.bottomRight,
        color: Colors.pink,
        ),
        */