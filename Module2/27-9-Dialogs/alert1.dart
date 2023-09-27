//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlert1 extends StatefulWidget
{
  @override
  AlertState createState() => AlertState();
}

class AlertState extends State<MyAlert1>
{
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Confirm Dialog"),),
        body: Center(

            child: ElevatedButton(
              onPressed: ()
              {

                _displayDialog(context);



              }, child: Text("Confirm Dialog"),),

        ),


      );
  }

  void _displayDialog(BuildContext context) async
  {

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField AlertDemo'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "TextField in Dialog"),
            ),
            actions: <Widget>[
              new ElevatedButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });


  }
  
}