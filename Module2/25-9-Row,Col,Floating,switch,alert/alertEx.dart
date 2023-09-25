import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertEx extends StatefulWidget
{
  @override
  AlertState createState()=> AlertState();


}

class AlertState extends State<AlertEx>
{
  @override
  Widget build(BuildContext context)
  {

    return Center(

        child: ElevatedButton(onPressed: () {

          myalert(context);

        }, child: Text("Click me"),),

    );



  }

  void myalert(BuildContext context)
  {
    // Create button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("This is an alert message."),
      actions: [

        okButton

      ],

    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );




  }

}