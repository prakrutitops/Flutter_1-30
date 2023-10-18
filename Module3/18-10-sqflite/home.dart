import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add.dart';

class MyHomePage extends StatefulWidget
{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Select Operations"),),
        body: Center(

          child: Column(

            children: [

                ElevatedButton(onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context) => AddStudent()));

                }, child: Text("Add Student")),
                ElevatedButton(onPressed: (){


                }, child: Text("View Student"))


            ],
          ),

        ),

      );

  }
}