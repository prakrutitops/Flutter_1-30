import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
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

            appBar: AppBar(title: Text("Selection Alert Example"),),
            body: Center(

                child: Column(

                  children: [

                      ElevatedButton(
                          onPressed: () async
                          {
                            final Product prodName = await _asyncSimpleDialog(context);
                            print("Selected Product is $prodName");
                          },
                          child: Text("Click Me"))




                  ],

                ),


            ),


        );

  }

}
enum Product { Apple, Samsung, Oppo, Redmi }

Future<dynamic>_asyncSimpleDialog(BuildContext context) async
{
   return  await showDialog(context: context,
       builder: (BuildContext context)
       {
         return SimpleDialog
           (
             title: const Text('Select Product '),
             children: <Widget>[
             SimpleDialogOption
             (
              onPressed: () {
              Navigator.pop(context, Product.Apple);
            },
              child: const Text('Apple'),
            ),
            SimpleDialogOption(
            onPressed: () {
        Navigator.pop(context, Product.Samsung);
       },
       child: const Text('Samsung'),
       ),
       SimpleDialogOption(
       onPressed: () {
       Navigator.pop(context, Product.Oppo);
       },
       child: const Text('Oppo'),
       ),
       SimpleDialogOption(
       onPressed: () {
       Navigator.pop(context, Product.Redmi);
       },
       child: const Text('Redmi'),
         ),

         ],
         );

       }
   );
}



