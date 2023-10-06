import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListview extends StatefulWidget
{
  @override
  ListState createState() => ListState();
}

class ListState extends State<MyListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Listview Example"),),
      body: getlistview(),

    );
  }
}

  getlistview()
  {
      var listview = ListView(children: [

        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: ()
          {
            debugPrint("Landscape tapped");
          },

        ),

        ListTile(
          leading: Icon(Icons.laptop_chromebook),
          title: Text("Windows"),
        ),


        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
        ),




      ],


      );


      return listview;
  }

