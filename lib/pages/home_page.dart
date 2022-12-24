import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  int d=9;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Anything")),

      ),
               body: Center(
                    child:Container(
                          child: Text("Hello $d"),
        )
         ),
      drawer: Drawer(),
       );
  }
}
