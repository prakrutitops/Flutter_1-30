//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget
{
  String name1;
  String surname1;
  Test2({Key key,this.name1,this.surname1}) : super(key: key);



  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("$name1 - $surname1"),),
      body: Center
        (



      ),

    );
  }


}

