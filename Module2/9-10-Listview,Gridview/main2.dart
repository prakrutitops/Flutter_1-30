//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/model.dart';

class DynamicList extends StatefulWidget
{
  @override
  DynamicState createState() => DynamicState();

}

class DynamicState extends State<DynamicList>
{

  /*List<model>mobilelist = List();

  mobilelist.add(model("images/a.jpg", "A", "A1"));
  mobilelist.add(model("images/photo.jpg", "B", "B1"));
  mobilelist.add(model("images/a.jpg", "C", "C1"));*/
  @override
  Widget build(BuildContext context)
  {
      List<model>mobilelist = List();

      mobilelist.add(model("images/a.jpg", "A", "A1"));
      mobilelist.add(model("images/photo.jpg", "B", "B1"));
      mobilelist.add(model("images/a.jpg", "C", "C1"));
      mobilelist.add(model("images/a.jpg", "A", "A1"));
      mobilelist.add(model("images/photo.jpg", "B", "B1"));
      mobilelist.add(model("images/a.jpg", "C", "C1"));
      mobilelist.add(model("images/a.jpg", "A", "A1"));
      mobilelist.add(model("images/photo.jpg", "B", "B1"));
      mobilelist.add(model("images/a.jpg", "C", "C1"));


      return Scaffold
        (

          appBar: AppBar(title: Text("Dynamic List Example"),),
          body: ListView.builder(itemCount: mobilelist == null ? 0 : mobilelist.length,
        itemBuilder: (ctx,i)
          {
          return ListTile
          (

            leading: Image.asset(mobilelist[i].image,width: 100,height: 250),
            title: Text(mobilelist[i].name),
            subtitle: Text(mobilelist[i].des));
          },
        ),


      );
      
      //return ListView.builder(itemBuilder: itemBuilder)





  }

}