import 'package:flutter_app/models/cart.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore{
  CatalogModel catalog=CatalogModel();
  CartModel cart=CartModel();

  MyStore(){
    // catalog = CatalogModel();
    // cart = CartModel();
    cart.catalog = catalog;
  }
}