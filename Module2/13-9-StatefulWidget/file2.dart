import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/file1.dart';

class File2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Tops App"),),
        body: Center
          (

              child: Column(

                  children: [

                      TextFormField
                        (
                          decoration: const InputDecoration
                          (
                            icon: const Icon(Icons.person),
                            hintText: "Enter Your Firstname",
                            labelText: 'Firstname',
                        ),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter Firstname';
                          }
                          return null;
                        },



                        ),
                      SizedBox(width: 20,height: 20,),
                      TextFormField
                        (
                        decoration: const InputDecoration
                          (
                          icon: const Icon(Icons.person),
                          hintText: "Enter Your LastName",
                          labelText: 'Lastname',
                        ),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter Lastname';
                          }
                          return null;
                        },
                      ),
                    SizedBox(width: 20,height: 20,),
                      TextFormField
                        (
                        decoration: const InputDecoration
                          (
                          icon: const Icon(Icons.person),
                          hintText: "Enter Your Password",
                          labelText: 'password',
                        ),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                      ),
                    SizedBox(width: 20,height: 20,),
                      ElevatedButton(onPressed: (){

                        //Navigator.push(context,MaterialPageRoute(builder: (context) => File1()));



                        
                      }, child: Text("Submit"))


                  ],


              ),


          ),


    );
  }

}