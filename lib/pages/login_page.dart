// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;
  bool notNullName = false;
  bool notNullPass =false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    final form = _formKey.currentState;
      if (form != null && !form.validate()) {
      // Invalid!
      return;
    }
    // if(_formKey.currentState.validate()){
     setState((){
      changeButton = true;
      });
      await Future.delayed((Duration(seconds : 1)));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
     } );
  // }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(33, 150, 243, 1),
      child : SingleChildScrollView(
        child: Form(
          key : _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_page.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height : 40.0,
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
                      validator: (value){
                        if(value==null){
                          return ("Username can't be empty");
                        }
                        if(value.isEmpty){
                          return ("Username can't be empty");
                        }
                        notNullName = true;
                        return null;
                      },
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
                       validator: (value){
                         if(value==null){
                          return ("Password can't be empty");
                        }
                        if(value.isEmpty){
                          return ("Password can't be empty");
                        } else if(value.length < 6){
                          return ("Password length must be greater than 6");
                        }
                        notNullPass = true;
                        return null;
                      },
                    ),
                     const SizedBox(
                      height : 40.0,
                    ),
                    Material(
                      color: Colors.white,
                      borderRadius: 
                        BorderRadius.circular(changeButton ? 25 : 7),
                      child: InkWell( 
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds : 1 ),
                          width : changeButton ? 50 : 150,
                          height : 50,
                          alignment: Alignment.center,
                          child : changeButton ? const Icon(
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
                            // decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     // shape : changeButton ? BoxShape.circle : BoxShape.rectangle,
                            // ),
                        ),
                      ),
                    )  
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
