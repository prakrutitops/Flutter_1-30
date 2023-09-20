import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerEx extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Container Ex"),),
        body: Container(

          height: 200,
          width: double.infinity,
          //color: Colors.orange,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(color:Colors.cyan,width: 3),
          ),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ));



  }

}