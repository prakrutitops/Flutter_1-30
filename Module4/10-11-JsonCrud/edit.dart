//@dart=2.9
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud1/main.dart';
class Edit extends StatefulWidget
{
  final List list;
  final int index;


  Edit({this.list, this.index});


  @override
  _EditState createState() => _EditState();

}

class _EditState  extends State<Edit>
{
  TextEditingController name;
  TextEditingController price;
  TextEditingController des;


  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController(text: widget.list[widget.index]['product_name']);
    price = TextEditingController(text: widget.list[widget.index]['product_price']);
    des = TextEditingController(text: widget.list[widget.index]['product_description']);

    super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar:  AppBar(

          title: Text("Edit Data ${widget.list[widget.index]['product_name']}"),
        ),

        body: ListView(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Enter Product Name",labelText: "Enter Name"),
            ),
            TextField(
              controller: price,
              decoration: InputDecoration(hintText: "Enter Product Price",labelText: "Enter Price"),

            ),

            TextField(
              controller: des,
              decoration: InputDecoration(hintText: "Enter Product Description",labelText: "Enter Description"),

            ),

            MaterialButton(
              child: Text("Edit Data"),
              onPressed: (){
                editData();
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> MyApp()),
                );
              },
            )
          ],
        ),
      );
  }

  void editData()
  {
      var url ="https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productupdate.php";
      http.post(url,body: {

        'product_id':widget.list[widget.index]['product_id'],
        'product_name': name.text.toString(),
        'product_price': price.text.toString(),
        'product_description':des.text.toString(),
      });


  }

}