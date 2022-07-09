import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({ Key? key, required this.catalog }) : super(key: key);
  
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: (){
        if(!isInCart){
        final _catalog = CatalogModel();
        isInCart = isInCart.toggle();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {
          
        });
        }
      },
      child: isInCart? Icon(Icons.done) :Icon(CupertinoIcons.bag_fill_badge_plus),
        style : ButtonStyle( 
        backgroundColor: MaterialStateProperty.all(
          context.theme.buttonColor,
        ),
        shape: MaterialStateProperty.all(StadiumBorder())
      ) 
    );
  }
}