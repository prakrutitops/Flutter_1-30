import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'add.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {


    final Future<FirebaseApp> _initailization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initailization,
        builder: (context, snapshot) {
          //Something from Firebase
          if (snapshot.hasError) {
            print('Something Went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                appBarTheme: const AppBarTheme(
                  centerTitle: true,
                ),
              ),
              home: const AddPage(),
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

