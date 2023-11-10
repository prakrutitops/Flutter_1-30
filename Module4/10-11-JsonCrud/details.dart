//@dart=2.9
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud1/main.dart';

import 'edit.dart';

class Details extends StatefulWidget
{
  List list;
  int index;


  Details({this.list, this.index});

  @override
  _DetailsState createState() => _DetailsState();

}
class _DetailsState extends State<Details>
{



  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

      appBar: AppBar(title: Text('${widget.list[widget.index]['product_name']}'),),

    body: Container(
          child: Column(
              children: [


                Text(
                  widget.list[widget.index]['product_name'],
                  style: TextStyle(fontSize: 20.0),
                ),

                Text(
                  widget.list[widget.index]['product_price'],

                ),

                MaterialButton(
                  child: Text("Edit"),
                  color: Colors.deepPurpleAccent,

                  onPressed: ()=>Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=> Edit(list:widget.list,index:widget.index)),
                  ),
                ),

                MaterialButton(
                    child: Text("Delete"),
                    color: Colors.deepPurpleAccent,
                    onPressed: (){
                      confirm();
                    }
                )

              ]


          )



    )






    );


  }

  void confirm()
  {

    var url = "https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productdelete.php";
    http.post(url,body:
    {
      'product_id':widget.list[widget.index]['product_id'],

    });
    Navigator.of(context).push
      (
       MaterialPageRoute(builder: (BuildContext context)=> MyApp()));


  }

}