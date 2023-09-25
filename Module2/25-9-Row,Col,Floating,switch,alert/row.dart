import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRow extends StatefulWidget
{

  @override
  MyState createState() => MyState();
}

class MyState extends State<MyRow>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Row Example"),),
      body: Center(

        child: Row(

          children: [

            Icon(Icons.camera),
            Icon(Icons.browse_gallery),
            Icon(Icons.call),





          ],


        ),

      ),

      floatingActionButton:
      FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: ()
        {

          setState(() {

          });

        },),


    );
  }

}