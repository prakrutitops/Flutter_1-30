import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/AddStudent.dart';
import 'package:untitled2/ViewStudent.dart';

class HomePage extends StatefulWidget
{
  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

          appBar: AppBar(title: Text("sqlite db"),),
          body: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Column(
                children:[

                  ElevatedButton(
                    onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => AddStudent()));

                    },
                    child: Text("Add Student"),
                  ),

                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ViewStudent()));
                    },
                    child: Text("View Student"),
                  ),

                ]
            ),
          ),
      

      );

  }

}