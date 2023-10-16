//@dart=2.9
import 'package:flutter/material.dart';
import 'package:navigationex/test1.dart';

void main()
{
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:Test1()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Bottom Navigation Example"),),
        body:
        Center
          (

            child: _widgetOptions.elementAt(_selectedIndex),

          ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[

              BottomNavigationBarItem
              (
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green
              ),

              BottomNavigationBarItem
                (
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.green
              ),

              BottomNavigationBarItem
                (
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Colors.green
              ),


            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5

        ),


      );
  }


  void _onItemTapped(int value)
  {
    setState(()
    {
      _selectedIndex = value;

      // if(_selectedIndex==0)
      //   {
      //
      //   }

    });

  }
}
