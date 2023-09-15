import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  SplashState createState() => SplashState();

}

class SplashState extends State<MyApp>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 7), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2()))
    );
  }


  @override
  Widget build(BuildContext context)
  {
        return Scaffold
          (

          body: Center(

              child: Column(

                  children:
                  [

                     // Image.network("https://unbought-milk.000webhostapp.com/images/c.jpg",width: 250,height: 250),
                    Lottie.network("https://vyasprakruti.000webhostapp.com/E-Greetings%20Project/animation.json",
                        height: 200.0,
                        repeat: true,
                        reverse: true,
                        animate: true)

                  //Navigator.push(context,MaterialPageRoute(builder: (context) => File1()));
                  ],

              ),

          ),




          );
  }

}
