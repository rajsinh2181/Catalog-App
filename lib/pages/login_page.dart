
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;
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
            Text (
             "Welcome, $name", 
             style : const TextStyle(
               fontSize: 34,
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
                    onChanged:(value){
                      name =  value;
                      setState(() {});
                    }  ,
                  ),
                  TextFormField(
                    obscureText: true,
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
            InkWell(
              onTap: ()async  {
                setState((){
                  changeButton = true;
                });
                await Future.delayed((Duration(seconds : 1)));
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds : 1 ),
                width : changeButton ? 50 : 150,
                height : 50,
                alignment: Alignment.center,
                child : changeButton ? Icon(
                  Icons.done,
                  color : Colors.blue,
                ) : Text(
                  "Login", 
                  style: TextStyle(
                    color : Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // shape : changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(changeButton ? 25 : 7),
                  ),
              ),
            )  
            // ElevatedButton(
            //    onPressed: () {
            //      Navigator.pushNamed(context, MyRoutes.homeRoute);
            //    },
            //   style: TextButton.styleFrom(minimumSize: Size(110, 45)),
            //   child: const Text(
            //     "Login",
            //     style : TextStyle(
            //       color : Color.fromARGB(255, 10, 39, 62)
            //     )
            //   ),
            // )
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