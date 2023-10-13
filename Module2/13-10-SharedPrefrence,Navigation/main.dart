import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp(),
        theme:ThemeData
          (
            primarySwatch: Colors.amber
          ),
            //darkTheme: ,

  ));
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

      appBar: AppBar
        (
          title: Text("Navigation Drawer Example"),
        ),
        body: Center(child: Text("This a example Naviagtion"),),
        drawer: Drawer(child: ListView(

            children: [

                  UserAccountsDrawerHeader(
                      accountName: Text("Prakruti Vyas"),
                      accountEmail: Text("Prakruti@gmail.com"),
                      currentAccountPicture: CircleAvatar
                        (
                          backgroundColor: Colors.orange,
                          child: Text("P",style: TextStyle(fontSize: 40.0),),
                        ),
                    ),
              ListTile
                (
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },
                ),

              ListTile
                (
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: ()
                {
                  Navigator.pop(context);
                },
              ),

              ListTile
                (
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: ()
                {
                  Navigator.pop(context);
                },
              ),




            ],


        ),),

    );
  }

}
