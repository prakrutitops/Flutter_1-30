//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
class AddData extends StatefulWidget
{
  @override
  AddState createState() => AddState();

}

class AddState extends State<AddData>
{
  TextEditingController pname = new TextEditingController();
  TextEditingController pprice = new TextEditingController();
  TextEditingController pdes = new TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Json Crud App")),
      body: Center(

        child: Column(

            children:
            [

              TextField(controller: pname,decoration: InputDecoration(hintText: "Enter Product Name",labelText: "Enter Product Name"),),
              TextField(controller: pprice,decoration: InputDecoration(hintText: "Enter Product Price",labelText: "Enter Product Price"),),
              TextField(controller: pdes,decoration: InputDecoration(hintText: "Enter Product Description",labelText: "Enter Product Description"),),
              ElevatedButton(onPressed: ()
              {
                insertdata();
                print("Inserted");
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => MyApp()));
              }
              , child: Text("Add Data"))




            ],

        ),

      ),



    );

}

  void insertdata()
  {
  
    var url = Uri.parse("https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productinsert.php");
    http.post(url,body:
    {
        "product_name":pname.text.toString(),
        "product_price":pprice.text.toString(),
        "product_description":pdes.text.toString()

    });
  }
}