//@dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonview/model.dart';
import 'package:http/http.dart' as http;

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();



}

class MyAppState extends State<MyApp>
{
  List list;
  int index;

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
          appBar: AppBar(title: Text("Json View Data")),
          body: FutureBuilder<List>(

                future: getdata(),
                builder: (ctx,ss)
                { 
                      if(ss.hasError)
                      {
                        print("Error");
                      }
                      if(ss.hasData)
                      {
                          return Model(list:ss.data);
                      }
                      else
                      {
                        return CircularProgressIndicator();    
                      }
                },


          ),

      );
  }

  Future<List> getdata() async
  {
    final response =  await http.get(Uri.parse("https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productview.php"));
    return jsonDecode(response.body);
  }

}
