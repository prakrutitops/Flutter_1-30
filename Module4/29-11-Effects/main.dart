import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shimmerfile.dart';

void main()
{
  runApp(MyApp2());
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Bottom Menu"),),
      backgroundColor: Colors.green,
      body: Center(),
      bottomNavigationBar: ConvexAppBar(
        items:
       [

         TabItem(icon: Icons.play_arrow),
         TabItem(icon: Icons.museum),
         TabItem(icon: Icons.book),

       ],

        onTap: (int i) => print('click index=$i'),
      ),

    );
  }
}
