import 'package:flutter_app/models/catalog.dart';

class CartModel{

  late CatalogModel _catalog;
  //collection of ids - store ids of each item
  final List<int> _itemIds = [];
  // Get Catalog
  CatalogModel get catalog => _catalog; 

  set catalog(CatalogModel newCatalog){
    _catalog = newCatalog;
  }
  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => items.fold(0,(total,current) => total + current.price);

  //Add item
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item){
    _itemIds.remove(item.id);
  }
}