
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      color: Color.fromRGBO(33, 150, 243, 1),
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
              // height : 1000,
            ),
            const SizedBox(
              height : 40.0,
              // child : Text("hello world",),
            ),
            const Text (
             "Welcome", 
             style : TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             )
            ),
            const SizedBox(
              height : 40.0,
              // child : Text("hello world",),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical : 20, horizontal : 40),
              child: Column(
                children: [
                 TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height : 40.0,
              // child : Text("hello world",),
            ),
            ElevatedButton(
               onPressed: () {
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
               },
              style: TextButton.styleFrom(minimumSize: Size(110, 45)),
              child: const Text(
                "Login",
                style : TextStyle(
                  color : Color.fromARGB(255, 10, 39, 62)
                )
              ),
          
            )
          ],
        ),
      )
    );
  }
}




// child : Center (
//         child : Text ("loginPage",
//         style: TextStyle(
//           fontSize: 40 ,
//           color : Colors.blue,
//           fontWeight: FontWeight.bold,

//           ),
//           textScaleFactor: 1.0,
//          ),
//       ),