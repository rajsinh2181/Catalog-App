// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel{
  static List<Item> items= [];

  //get Item by ID
  static Item getById(int id) => 
  items.firstWhere((element) => element.id == id,orElse : null);

  //item get by position
  static Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
  //dscoding the data
  
factory Item.fromMap(Map<String,dynamic> map){
    //mapping the data to local variables
    return Item(
      id : map["id"],
      name : map["name"],
      desc : map["desc"],
      price : map["price"],
      color : map["color"],
      image : map["image"]
     );
  }
  //encoding the data
  toMap()=> {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image
  };
  
}


// factory Item.fromMap(Map<String,dynamic> map){
//     //mapping the data to local variables
//     return Item(
//       id : map["id"],
//       name : map["name"],
//       desc : map["desc"],
//       price : map["price"],
//       color : map["color"],
//       image : map["image"]
//      );
//   }
//   //encoding the data
//   toMap()=> {
//     "id" : id,
//     "name" : name,
//     "desc" : desc,
//     "price" : price,
//     "color" : color,
//     "image" : image
//   };