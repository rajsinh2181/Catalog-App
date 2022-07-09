import 'package:flutter/material.dart';
import 'package:flutter_app/models/cart.dart';
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
  _CartTotal({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height : 200,
      child : Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children : [
          "\$${_cart.totalPrice}".text.color(context.theme.highlightColor).xl5.make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content : "Buying not supported yet".text.make()
              ));
            },
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
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"Nothing to show".text.xl3.makeCentered()
    :ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context,index) => ListTile(
        leading : Icon(Icons.done),
        trailing : IconButton(
          icon : Icon(Icons.remove_circle_outline) ,
          onPressed: (){
            _cart.remove(_cart.items[index]);
            setState(() {
      
            });
          },
        ),
        title : _cart.items[index].name.text.make(),
      ),
    );
  }
}