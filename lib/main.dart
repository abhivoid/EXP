import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restart/pages/Login.dart';
import 'package:restart/pages/home_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: HomePage(
      // ),
      theme: ThemeData(brightness: Brightness.light,
          primarySwatch: Colors.blue,
           fontFamily: GoogleFonts.lato().fontFamily),
      routes: {
       // "/":(context)=>HomePage(),
        "/":(context)=>Login(),
         },
    );
  }
}