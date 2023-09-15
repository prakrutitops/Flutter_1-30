import 'package:flutter/material.dart';


class MyApp2 extends StatefulWidget
{
  @override
  HomeScreen createState() => HomeScreen();

}

class HomeScreen extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (

      body: Center(

        child: Column(

          children:
          [

             Text("Welcome",style: TextStyle(fontSize: 30))


          ],

        ),

      ),




    );
  }

}
