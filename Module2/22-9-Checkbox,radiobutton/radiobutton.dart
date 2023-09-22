//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonEx extends StatefulWidget
{
  @override
  RadioState createState() => RadioState();

}

enum BestTutorSite { javatpoint,w3schools,tutorialandexample}

class RadioState extends State<RadioButtonEx>
{
  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Center(

        child: Column(


          children: [

            ListTile(
              title: const Text('www.w3school.com'),
              leading: Radio(
                value: BestTutorSite.javatpoint,
                groupValue: _site,
                onChanged: (BestTutorSite value) {
                  setState(() {
                    _site = value;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('www.w3school.com'),
              leading: Radio(
                value: BestTutorSite.w3schools,
                groupValue: _site,
                onChanged: (BestTutorSite value) {
                  setState(() {
                    _site = value;
                  });
                },
              ),
            ),

            ListTile(
              title: const Text('www.w3school.com'),
              leading: Radio(
                value: BestTutorSite.tutorialandexample,
                groupValue: _site,
                onChanged: (BestTutorSite value) {
                  setState(() {
                    _site = value;
                  });
                },
              ),
            ),


          ],

        ),

      ),

    );


  }

}