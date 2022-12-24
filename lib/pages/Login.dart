import 'package:flutter/material.dart';
import 'package:restart/utils/routes.dart';

class Login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("Assets/fingerprint.png",fit:BoxFit.cover),
            SizedBox(
              height: 40.0,
            ),
            Text("Login",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal:16),
              child: Column(
                 children:[
                   TextFormField(
                     decoration: InputDecoration(
                         hintText: "Enter username",
                         labelText: "Username"
                     ),
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                         hintText: "Enter password",
                         labelText: "Password"
                     ),
                   ),
                   SizedBox(
                     height: 40,
                   ),
                   ElevatedButton(onPressed: (){
                     Navigator.pushNamed(context,Myroutes.homeroute);
                   },
                     child: Text("Login"),
                   style: TextButton.styleFrom(maximumSize: Size(150, 40)),
                       )
                 ]
              ),
            )
          ],
        ),
      )
    );
  }
}
