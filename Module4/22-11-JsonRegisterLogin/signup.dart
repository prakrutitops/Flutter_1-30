import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonregisterlogin12/main.dart';


class MySignupPage extends StatefulWidget
{
  @override
  MySignupPageState createState() => MySignupPageState();

}

class MySignupPageState extends State<MySignupPage>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
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
                labelText: 'firstname',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(8)),
              ),
              controller: fname,
            ),

            SizedBox(height: 50),

            TextField(
              decoration: InputDecoration
                (
                labelText: 'Lastname',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(8)),
              ),
              controller: lname,
            ),

            SizedBox(height: 50),


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
                signup();

                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => MyLoginPage()));
            }, child: Text("Signup")),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> MySignupPage()));
            }, child: Text("Do You want to Signup?"))


          ],

        ),

      ),
    );
  }

  void signup()
  {

    var url = Uri.parse("https://topsapi.000webhostapp.com/API/register.php");
    http.post(url,body:
    {
      "firstname":fname.text.toString(),
      "lastname":lname.text.toString(),
      "email":email.text.toString(),
      "password":pass.text.toString()

    });
  }

}