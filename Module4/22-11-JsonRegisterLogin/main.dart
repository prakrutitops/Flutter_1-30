import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonregisterlogin12/signup.dart';
import 'package:http/http.dart' as http;
void main()
{
  runApp(MaterialApp(home: MyLoginPage()));
}

class MyLoginPage extends StatefulWidget
{
  @override
  MyLoginPageState createState() => MyLoginPageState();

}

class MyLoginPageState extends State<MyLoginPage>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar(title: Text("Login Page"),),
          body: Center(

            child: Column(

                children: [

                    TextField(
                      decoration: InputDecoration
                        (
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: email,
                    ),

                    SizedBox(height: 50),

                  TextField( decoration: InputDecoration
                    (
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder
                      (
                        borderRadius: BorderRadius.circular(8)),
                  ),
                    controller: pass),

                    SizedBox(height: 50),

                  ElevatedButton(onPressed: ()
                  {

                    login();


                  }, child: Text("Login")),
                  ElevatedButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> MySignupPage()));
                  }, child: Text("Do You want to Signup?"))


                ],

            ),

          ),
        );
  }

  Future login() async
  {

    var url = "https://topsapi.000webhostapp.com/API/login.php";

    var response = await http.post(Uri.parse(url), body: {
      "email": email.text.toString(),
      "password": pass.text.toString(),
    });
    var data = json.decode(response.body);

    if(data==0)
    {
      print("fail2");
    }
    else
    {
      print("success2");
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(),),);
    }

  }

}