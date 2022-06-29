import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: "Cart".text.make(),
      ),
    );
  }
}