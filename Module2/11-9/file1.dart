import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class File1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

          appBar: AppBar(title: Text("My Detail"),),
          body: Center(

              child: Column(

                children: [

                  Image.asset("assets/a.jpg",width: 250,height: 250,),
                  //Image.network(""),
                  SizedBox(width: 100,height: 50),
                  Text("Tops Technologies",style: TextStyle(fontSize: 25,color:Colors.blue)),
                  SizedBox(width: 100,height: 50),
                  ElevatedButton(onPressed: ()
                  {

                   // print('clicked');

                  Navigator.push(context, MaterialPageRoute(builder: (context) => F2()));

                  }, child: Text("Submit"))

                ],

              ),


          ),

      );


  }

}