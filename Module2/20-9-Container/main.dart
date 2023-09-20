//@dart=2.9
import 'package:flutter/material.dart';

import 'containerex.dart';
import 'homepage.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
          home: ContainerEx(),
        );
  }


}

