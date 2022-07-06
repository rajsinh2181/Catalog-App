import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: "Cart".text.make(),
      ),
      body : Column(
        children :[
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ]
      )
    );
  }
}


class _CartTotal extends StatelessWidget {
  const _CartTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height : 200,
      child : Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children : [
          "\$${99}".text.color(context.theme.highlightColor).xl5.make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){},
            style : ButtonStyle(
              backgroundColor : 
              MaterialStateProperty.all(context.theme.buttonColor),
            ),
            child: "BUY".text.white.make(),
          )
        ]
      )

    
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({ Key? key }) : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context,index) => ListTile(
        leading : Icon(Icons.done),
        trailing : IconButton(
          onPressed: (){},
          icon : Icon(Icons.remove_circle_outline) ,
        ),
        title : "item1".text.make(),
      ),
    );
  }
}