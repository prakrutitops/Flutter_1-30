import 'package:flutter/material.dart';

import 'file1.dart';

void main()
{
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return MaterialApp
        (
            home:File1(),
            debugShowCheckedModeBanner: false,

        );
  }

}
class F2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
        appBar: AppBar(title: Text("Tops App"),),
        body: Center
          (

              child: Column(

                  children: [

                    ElevatedButton
                      (
                      onPressed: ()
                      {
                        print('Done');
                      },
                      child: Text("Click Me"),
                    ),

                    ElevatedButton
                      (
                      onPressed: ()
                      {
                        print('Done');
                      },
                      child: Text("Click Me"),
                    ),





                  ],



              ),

          ),

        );
  }

}