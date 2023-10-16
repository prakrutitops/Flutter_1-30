//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationex/test2.dart';

class Test1 extends StatefulWidget
{
  @override
  Test1State createState() => Test1State();


}

class Test1State extends State<Test1>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();

  @override
  Widget build(BuildContext context)
  {

      return Scaffold
        (
          appBar: AppBar(title: Text("Pass Data From One Screen to another"),),
          body: Center(

            child: Column(

                children: [

                  TextField
                    (
                      controller: name,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Your Name",
                          label: Text("Your Name")
                        ),
                    ),


                  TextField
                    (
                    controller: surname,
                    decoration: InputDecoration
                      (
                        hintText: "Enter Your surname",
                        label: Text("Your Surname")
                    ),
                  ),

                  ElevatedButton(onPressed: ()
                  {
                    var data = name.text.toString();
                    var data2 = surname.text.toString();
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => Test2(name1: data,surname1:data2)));

                  }, child: Text("Send"))


                ],

            ),

          ),

        );

  }

}