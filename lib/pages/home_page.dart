// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/items_widget.dart';

import '../widgets/drawer.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(8,(index)=>CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context,index){
            return ItemWidget(
              item : dummyList[index]
              );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}



