import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mycol extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Column Example"),),
      body: Center(

        child: Column(

          children: [

            ElevatedButton(onPressed: (){}, child: Text("Click 1")),
            ElevatedButton(onPressed: (){}, child: Text("Click 2")),
            ElevatedButton(onPressed: (){}, child: Text("Click 3"))


          ],


        ),

      ),


    );


  }

}