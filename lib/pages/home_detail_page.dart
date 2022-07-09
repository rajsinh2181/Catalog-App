//  ignore_for_file: prefer_const_constructors
//ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor : context.canvasColor,
      bottomNavigationBar:  Container(
        color : context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.bold.xl4.color(context.theme.highlightColor).make(),
             AddToCart(
              catalog: catalog,
            ).wh(150,60),
             
            ]
          ).p16(),
      ),
      body : SafeArea(
        bottom: false,
        child: Column(
          children : [
            Hero(
              tag : Key(catalog.id.toString()), 
              child:Image.network(catalog.image)
            ).h32(context),
            Expanded(
              child : VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color : context.cardColor,
                  child : Column(
                    children : [
                    catalog.name.text.xl4.bold.color(context.accentColor).make(),
                    catalog.desc.text.fade.gray400.sm.make(),
                    "Ut sed rebum eirmod justo nonumy sed erat stet magna. Eirmod lorem dolore et invidunt et. Et sea amet diam vero vero sit dolores et. Tempor kasd nonumy dolor sit ea eos rebum, kasd et sed sed consetetur accusam rebum,".
                    text.fade.gray400.make().p16(),
                    ]
                  ).py32(),
                ),
              )
            )
          ]
        ),
      ),
    );
  }
}
