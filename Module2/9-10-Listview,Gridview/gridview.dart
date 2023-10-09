//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget
{
  @override
  GridState createState() => GridState();


}

class GridState extends State<MyGrid>
{

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Gridview Example"),),
          body: Container(

              padding: EdgeInsets.all(12.0),
              child: GridView.builder
                (
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount
                    (
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0
                  ),
                  itemBuilder:(ctx,i)
                  {
                    return Image.network(images[i]);

                  },
                  itemCount: images.length,
                ),


          ),



      );
  }

}