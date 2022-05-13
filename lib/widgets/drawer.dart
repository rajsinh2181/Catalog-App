// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=768:*";
    return Drawer(
      child : Container(
        color: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
         children:[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child : UserAccountsDrawerHeader(
                 accountName: Text("Raj Singh"),
                accountEmail: Text("rajsinh2181@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage : NetworkImage(imageUrl),
                ),    
              ),
            ),
            ListTile(
              leading : Icon(
                CupertinoIcons.home,
                color : Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor : 1.3,
                style : TextStyle(
                  color : Colors.white,
                )
              )
            ),
            ListTile(
              leading : Icon(
                CupertinoIcons.person_crop_circle,
                color : Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor : 1.3,
                style : TextStyle(
                  color : Colors.white,
                )
              )
            ),
            ListTile(
              leading : Icon(
                CupertinoIcons.mail,
                color : Colors.white,
              ),
              title: Text(
                "Mail Me",
                textScaleFactor : 1.3,
                style : TextStyle(
                  color : Colors.white,
                )
              )
            )
          ],
        ),
      ),
    );
  }
}