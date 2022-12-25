import 'package:flutter/material.dart';
import 'package:restart/utils/routes.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  String a="Login";
  bool onpre=false;
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
            Center(
              child: Text("$name",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,

                ),

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
                     onChanged: (value){
                       name="Hi "+value;
                       if(value=="")
                         name=value;
                       setState(() {

                       });
                     },

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
                   
                   InkWell(
                     onTap: ()async{
                       setState(() {
                         onpre=true;
                         a="Done";
                       });
                       await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context,Myroutes.homeroute);
                     },
                     child: AnimatedContainer(duration: Duration(seconds: 1),
                       width: onpre?100:150,
                       height: 40,
                       alignment: Alignment.center,
                       child: //changeButton?Icon(Icons.done,color: Colors.white,) :
                       Text("$a",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                       ),),
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         //shape: onpre?BoxShape.circle:BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(onpre?6:12)
                       ),
                     ),
                   ),

                   // ElevatedButton(onPressed: (){
                   //   Navigator.pushNamed(context,Myroutes.homeroute);
                   // },
                   //   child: Text("Login"),
                   // style: TextButton.styleFrom(maximumSize: Size(150, 40)),
                   //     )
                 ]
              ),
            )
          ],
        ),
      )
    );
  }
}
