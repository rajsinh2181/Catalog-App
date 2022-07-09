import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogHeader  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
             "Catalog App".text.xl4.bold.color(context.theme.accentColor).make(),
             "trending products".text.xl2.color(context.theme.accentColor).make(),
            ]
          ).py16();
  }
}