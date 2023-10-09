//@dart=2.9
import 'package:flutter/material.dart';

import 'gridview.dart';
import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:MyGrid()));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (

      appBar: AppBar(title: Text("Static ListView"),),
      body: getdatafromlist()



      );
  }

  Widget getdatafromlist()
  {
    var listview = ListView
      (
        children:
        [

            ListTile(leading: Icon(Icons.alarm),title: Text("A")),
            ListTile(leading: Icon(Icons.ac_unit),title: Text("B")),
            ListTile(leading: Icon(Icons.access_alarm),title: Text("C")),
            ListTile(leading: Icon(Icons.ac_unit_sharp),title: Text("D")),

        ],

      );

    return listview;
  }

}
