// ignore_for_file: prefer_const_constructors
// import 'dart:html';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/items_widget.dart';

import '../widgets/drawer.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 @override
  void initState() { 
    super.initState();
    loadData();
  }
 loadData()async{
await Future.delayed(Duration(seconds : 2));
  final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //decoding the data from string format to map format
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    //fromMap is a function in catalog.dart for decoding
    CatalogModel.items = List.from(productsData)
    .map<Item>((item) => Item.fromMap(item)).toList();
    setState(() { });
 }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
        ? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context,index){
            return ItemWidget(
              item : CatalogModel.items[index]
              );
          },
        ) : Center (child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}



