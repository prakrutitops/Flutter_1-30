import 'package:flutter/material.dart';
import 'package:task/screens/home.dart';
import 'package:task/second.dart';

import 'basiclistview.dart';

void main()
{
  runApp(MaterialApp(home:Home()));
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

          appBar: AppBar(title: Text("Login Form"),),
          body: Center
            (

                child: ElevatedButton(onPressed: ()
                 {
                    print('clicked');
                    Navigator.push(context,MaterialPageRoute(builder:(BuildContext context) => Second()));

                  }, child: Text("Click Me"),),

            ),

      );
  }

}
