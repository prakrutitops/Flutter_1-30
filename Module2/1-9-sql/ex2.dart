import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Screen 3"),),
          body:Center(

              child: Column(

                  children: [


                    ElevatedButton(
                      onPressed: ()
                      {

                        print("Clicked");
                      },
                      child: Text("Click Me"),),

                    ElevatedButton(
                      onPressed: ()
                      {

                        print("Clicked2");
                      },
                      child: Text("Click Me2"),),




                  ],


              ),


          ) ,

      );
  }

}