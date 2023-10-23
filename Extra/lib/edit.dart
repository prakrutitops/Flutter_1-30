//@dart=2.9
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/view.dart';
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
  //TextEditingController surname;
  TextEditingController email;


  @override
  void initState()
  {
    // TODO: implement initState
    name = TextEditingController(text: widget.list[widget.index]['name']);
    email = TextEditingController(text: widget.list[widget.index]['email']);


    super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar:  AppBar(

        title: Text("Edit Data ${widget.list[widget.index]['name']}"),
      ),

      body: ListView(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(hintText: "Enter Your Name",labelText: "Enter Name"),
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(hintText: "Enter Your Email",labelText: "Enter Email"),

          ),



          MaterialButton(
            child: Text("Edit Data"),
            onPressed: (){
              editData();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> ViewData()),
              );
            },
          )
        ],
      ),
    );
  }

  void editData()
  {
    var url ="https://vyasprakruti.000webhostapp.com/flutterapi/dataupdate.php";
    http.post(url,body: {

      'id':widget.list[widget.index]['id'],
      'name': name.text.toString(),
      'email': email.text.toString(),
    });


  }

}