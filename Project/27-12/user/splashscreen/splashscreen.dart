import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../login/login.dart';

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    checkConnectivity();

  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("E-Greetings"),),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            //Lottiee Animation
            Lottie.asset('images/animation.json',width: 100,height: 100)

          ],
        ),
      ),
    );
  }

  void checkConnectivity() async
  {

    var connectivityResult = await (Connectivity().checkConnectivity());

    if(connectivityResult==ConnectivityResult.mobile)
    {
      Timer
        (
          Duration(seconds: 4), () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))
      );
    }
    else if(connectivityResult==ConnectivityResult.wifi)
    {
      Timer
        (
          Duration(seconds: 4), () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))
      );
    }
    else
    {
      showerrordialog(context);
    }

  }

  showerrordialog(BuildContext context)
  {

    Widget cancelButton = TextButton(
      child:Text("Exit",style: TextStyle(color: Colors.grey),),
      onPressed: () {exit(0);},
    );
    Widget continueButton = TextButton(
      child:Text("Continue",style: TextStyle(color: Colors.grey),),
      onPressed:  ()
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
      },
    );


    AlertDialog alert = AlertDialog(
      title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
      backgroundColor: Colors.blue,
      content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
      actions: [
        cancelButton,
        continueButton,
      ],
    );


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


// void showerrordialog() async
// {
//   return showDialog<void>
//     (
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context)
//       {
//         return AlertDialog(
//
//           backgroundColor: Colors.blue,
//           title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
//           content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
//           actions: [
//
//               ElevatedButton(onPressed: ()
//               {
//
//                 exit(0);
//
//               }, child: Text("Exit",style: TextStyle(color: Colors.grey)),)
//
//
//
//           ],
//
//         );
//
//       }
//
//
//
//     );
//
//
// }
}
