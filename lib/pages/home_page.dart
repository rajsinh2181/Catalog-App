// ignore_for_file: prefer_const_constructors
// import 'dart:html';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/items_widget.dart';
import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
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
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding : Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
             CatalogHeader(),
            if (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) 
              CatalogList().expand(),
             
              // Center(
              //   child:CircularProgressIndicator()
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
        return CatalogItem(catalog : catalog);
        },
    );
  }
}


class CatalogHeader  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
             "Catalog App".text.xl4.bold.color(MyTheme.darkBluishColor).make(),
             "trending products".text.xl2.make(),
            ]
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
                  child: CatalogImage(
                    image: catalog.image
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
class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({ Key? key, required this.image })
  : assert (image != null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
                image
              ).box.p4.color(MyTheme.creamColor).make().p4().w40(context);
  }
}
// ListView.builder(
//           itemCount: CatalogModel.items.length,
//           itemBuilder: (context,index){
//             return ItemWidget(
//               item : CatalogModel.items[index]
//               );
//           


//app bar to view
// appBar: AppBar(
//         title: Text("Catalog App"),
//       ),
//       body:Padding(
//         padding: const EdgeInsets.all(20.0),
//         child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
//         ? GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 16,
//             crossAxisSpacing: 16,
//           ), 
//           itemBuilder: (context,index){
//             final item = CatalogModel.items[index];
//             return Card(
//               clipBehavior: Clip.antiAlias,
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               // elevation: 12,
//               child: GridTile(
//                 header : Container(
//                   child: Text(item.name,style: TextStyle(color: Colors.white)),
//                   padding:const EdgeInsets.all(5),
//                   decoration : BoxDecoration(
//                     color : Colors.blueGrey,
//                   ),
//                   ),
//                 child:Image.network(item.image),
//                 footer:  Container(
//                   child: Text(item.price.toString(),style: TextStyle(color: Colors.white)),
//                   padding:const EdgeInsets.all(5),
//                   decoration : BoxDecoration(
//                     color : Colors.grey,
//                   ),
//                   ),
//               ),
//             );
//           },
//           itemCount: CatalogModel.items.length,
//         ):
//         Center (child: CircularProgressIndicator()),
//       ),
//       drawer: MyDrawer(),