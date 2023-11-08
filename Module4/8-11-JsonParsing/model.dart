//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
    List list;
    int index;

    Model({this.list});


  @override
  Widget build(BuildContext context)
  {
        return ListView.builder(
            itemCount: list == null ? 0 : list.length,
            itemBuilder: (BuildContext context, int index)
            {
                return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Container(
                            child: Column(

                                children: [


                                    Text(
                                        list[index]['product_name'],
                                        style: TextStyle(fontSize: 20.0),
                                        ),
                                    Text(
                                        list[index]['product_price'],
                                        style: TextStyle(fontSize: 20.0),
                                    ),
                                    Text(
                                        list[index]['product_description'],
                                        style: TextStyle(fontSize: 20.0),
                                    ),
                                    Image.network(list[index]["product_image"],width: 200,height: 200,)


                                ],
                            ),

                        ),


                );
            });
  }




// {
//     int product_id;
//     String product_name;
//     String product_price;
//     String product_description;
//
//
//     Model({required this.product_id,required this.product_name,required this.product_price,required this.product_description});



}