import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxEx extends StatefulWidget
{
  @override
  CheckState createState() => CheckState();


}

class CheckState extends State<CheckboxEx>
{
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context)
  {
          return Scaffold(

              appBar: AppBar(title: Text("Checkbox Example"),),
              body: Center(

                  child: Column(

                    children: [

                        CheckboxListTile(
                            secondary: Icon(Icons.alarm),
                            title: Text('Ringing at 4:30 AM every day'),
                            subtitle: Text('Ringing after 12 hours'),
                            value: this.valuefirst,
                            onChanged: (value)
                            {
                                setState(() {
                                  this.valuefirst=value!;

                                });
                            }
                          ),
                        CheckboxListTile(  secondary: Icon(Icons.alarm),
                            title: Text('Ringing at 4:30 AM every day'),
                            subtitle: Text('Ringing after 12 hours'),
                            value: this.valuesecond,
                            onChanged: (value)
                            {
                              setState(() {
                                  this.valuesecond=value!;

                                });
                            }),






                    ],

                  ),

              ) ,


          );
  }

}