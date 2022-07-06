import 'package:flutter/material.dart';
import 'package:flutter_app/models/cart.dart';
import 'package:flutter_app/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
        return InkWell(
          onTap:() =>  Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog
              ),
            ),
          ),
          child: CatalogItem(catalog : catalog),
        );
        },
    );

  }
}



class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({ Key? key, required this.catalog })
  : assert (catalog != null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
        child: VxBox(
          child: Row (
            children : [
                Container(
                  padding: const EdgeInsets.fromLTRB(12,0,10,0),
                  child: Hero(
                    tag : Key(catalog.id.toString()),
                    child: CatalogImage(
                      image: catalog.image
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        catalog.name.text.lg.bold.color(context.accentColor).make(),
                        catalog.desc.text.fade.gray400.sm.make(),
                        ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "\$${catalog.price}".text.bold.make(),
                            _AddToCart(catalog :catalog),
                          ]
                        )
                    ],
                  )
                )
            ],
          )
        ).color(context.cardColor).roundedSM.py16.square(180).make(),
    );
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({ Key? key, required this.catalog }) : super(key: key);
  
  @override
  State<_AddToCart> createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
  bool isAdded = false;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        isAdded = isAdded.toggle();
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {
          
        });
      },
      child: isAdded? Icon(Icons.done) :"Add to cart".text.make(),
        style : ButtonStyle( 
        backgroundColor: MaterialStateProperty.all(
          context.theme.buttonColor,
        ),
        shape: MaterialStateProperty.all(StadiumBorder())
      ) 
    );
  }
}