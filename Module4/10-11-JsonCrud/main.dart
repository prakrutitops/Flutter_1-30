//@dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsoncrud1/add.dart';
import 'package:http/http.dart' as http;
import 'details.dart';

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


  @override
  Widget build(BuildContext context) 
  {
      return Scaffold(
          
        appBar: AppBar(title: Text("Json Crud App"),),
        body: FutureBuilder<List>(
            future: getdata(),
            builder:(ctx,ss){

              if(ss.hasData)
              {

                return Model(list:ss.data);

              }
              if(ss.hasError)
              {
                print('Network Not Found');
              }

              return CircularProgressIndicator();



            }),
        floatingActionButton: FloatingActionButton
          (
          tooltip: "Add Data",
          child: Icon(Icons.add),
          onPressed: () 
          {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>AddData()));          },),
          
        
      );
  }

  Future<List> getdata() async
  {
    var response = await http.get(Uri.parse(
        "https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productview.php"));
    return jsonDecode(response.body);
  }
  
}
class Model extends StatelessWidget {

  List list;


  Model({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: list == null ? 0 : list.length,
        itemBuilder: (ctx, i) {
          return ListTile(

              title: Text(list[i]['product_name']),
              subtitle: Text(list[i]['product_price']),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)
              )));
        }


    );
  }
}



