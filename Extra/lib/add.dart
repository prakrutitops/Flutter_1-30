//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/view.dart';

class AddData extends StatefulWidget
{
  @override
  AddState createState() => AddState();

}

class AddState extends State<AddData>
{

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
        return Scaffold(

            appBar: AppBar(title: Text("Student Details"),),
            body: ListView(

                children: [

                  TextField(
                    controller: name ,
                    decoration: InputDecoration(hintText: "Enter Your Name",labelText: "Enter Your Name"),
                  ),
                  TextField(
                    controller: surname,
                    decoration: InputDecoration(hintText: "Enter Your Surname",labelText: "Enter Your Surname"),
                  ),

                  TextField(
                    controller: email,
                    decoration: InputDecoration(hintText: "Enter Your Email",labelText: "Enter Your Email"),
                  ),
                  ElevatedButton(onPressed: ()
                  {

                    //insertdata();
                    var url=Uri.parse("https://vyasprakruti.000webhostapp.com/flutterapi/datainsert.php");
                    http.post(url,

                        body:
                        {

                          "name":name.text.toString(),
                          "surname":surname.text.toString(),
                          "email":email.text.toString(),


                        }

                    );

                    print('Inserted');
                   /* Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>ViewData()),
                    );*/


                  }, child: Text("Submit")),

                  ElevatedButton(onPressed: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>ViewData()),
                    );

                  }, child: Text("View Data"))







                ]


            ),



        );
  }

  void insertdata()
  {




  }

}