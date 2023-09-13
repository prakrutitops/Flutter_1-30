//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class File3 extends StatefulWidget
{
  @override
  File3State createState() => File3State();


}

class File3State extends State<File3>
{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
      return Form
        (
          key: _formKey,
          child: Column(
            children: [

              TextFormField(

                decoration: const InputDecoration
                  (
                  icon: const Icon(Icons.person),
                  hintText: "Enter Your Firstname",
                  labelText: 'Firstname',
                ),
                validator: (value)
                {
                  if (value.isEmpty)
                  {
                    return 'Please enter firstname';
                  }
                  return null;
                },

              ),

              TextFormField(

                decoration: const InputDecoration
                  (
                  icon: const Icon(Icons.person),
                  hintText: "Enter Your Lastname",
                  labelText: 'Lastname',
                ),
                validator: (value)
                {
                  if (value.isEmpty)
                  {
                    return 'Please enter lastname';
                  }
                  return null;
                },

              ),


              TextFormField(

                decoration: const InputDecoration
                  (
                  icon: const Icon(Icons.person),
                  hintText: "Enter Your Password",
                  labelText: 'Password',
                ),
                validator: (value)
                {
                  if (value.isEmpty)
                  {
                    return 'Please enter password';
                  }
                  return null;
                },

              ),
              ElevatedButton(onPressed: ()
              {
                if(_formKey.currentState.validate())
                {
                  print("Data Processing");
                }
              },
                  child: Text("Login")
              )




            ],




          ),



        );
  }

}