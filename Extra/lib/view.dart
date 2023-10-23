//@dart=2.9
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'details.dart';

class ViewData extends StatefulWidget
{
  @override
  ViewState createState() => ViewState();
  
}

class ViewState extends State<ViewData>
{
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(title: Text("View Details"),),
      body: FutureBuilder<List>(
          future: getdetail(),
          builder:(ctx,ss){

            if(ss.hasData)
            {

              return Items(list:ss.data);

            }
            if(ss.hasError)
            {
              print('Network Not Found');
            }

            return CircularProgressIndicator();



          }),
    );


  }

  Future<List>getdetail()async
  {
    var response = await http.get(Uri.parse("https://vyasprakruti.000webhostapp.com/flutterapi/dataview.php"));
    return jsonDecode(response.body);
  }

}

class Items extends StatelessWidget
{
  List list;
  Items({this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(

        itemCount: list==null?0:list.length,
        itemBuilder: (ctx,i)
        {

          return ListTile(


            title: Text(list[i]['name']),
            subtitle: Text(list[i]['email']),
              //index send
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)
              )));

        }


    );
  }


  }
  
