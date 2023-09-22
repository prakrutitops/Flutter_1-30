import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cafeex extends StatefulWidget
{
  @override
  CafeState createState() => CafeState();


}

class CafeState extends State<Cafeex>
{

  bool one=false;
  bool two=false;
  bool three=false;
  var total=0;
  var amount=0;
  var data="";

  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

            appBar: AppBar(title: Text("Cafe System"),),
            body: Center(

                child: Column(

                    children: [

                        CheckboxListTile(
                          title: Text("Pizza"),
                          subtitle:Text("Rs. 100"),
                          value: one,
                          onChanged: (value)
                          {
                            setState(() {

                                this.one=value!;
                                if(one==true)
                                {
                                  amount+=100;
                                  data+="\n Pizza @ rs.100";
                                }
                                else
                                {
                                  amount-=100;
                                }


                            });
                          }
                          ),

                      CheckboxListTile(
                          title: Text("Burger"),
                          subtitle:Text("Rs. 70"),
                          value: two,
                          onChanged: (value)
                          {
                            setState(() {

                              this.two=value!;
                              if(two==true)
                              {
                                amount+=70;
                                data+="\n Burger @ rs.70";
                              }
                              else
                              {
                                amount-=70;
                              }


                            });
                          }
                      ),
                      CheckboxListTile(
                          title: Text("Coffee"),
                          subtitle:Text("Rs. 120"),
                          value: three,
                          onChanged: (value)
                          {
                            setState(() {

                              this.three=value!;
                              if(three==true)
                              {
                                amount+=120;
                                data+="\n Coffee @ rs.120";
                              }
                              else
                              {
                                amount-=120;
                              }


                            });
                          }
                      ),
                      ElevatedButton(onPressed: ()
                      {
                          print("\n Bill \n $data \n Total: $amount");

                      },
                          child: Text("Order"))



                    ],


                ),


            ),


      );

  }

}