import 'package:flutter/material.dart';
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,10,0),
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
                        catalog.name.text.lg.bold.color(MyTheme.darkBluishColor).make(),
                        catalog.desc.text.fade.gray400.sm.make(),
                        ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "\$${catalog.price}".text.bold.make(),
                            ElevatedButton(
                              onPressed: (){},
                              child: "Buy".text.make(),
                               style : ButtonStyle( 
                                backgroundColor: MaterialStateProperty.all(
                                  MyTheme.greyishblueColor
                                ),
                                shape: MaterialStateProperty.all(StadiumBorder())
                              ) 
                            )
                          ]
                        ).pOnly(right : 8.0 )
                    ],
                  )
                )
            ],
          )
        ).white.roundedSM.py16.square(180).make(),
    );
  }
}