import 'package:flutter/material.dart';

import 'main2.dart';
import 'main3.dart';


void main()
{
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	title: 'Animation Demo',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: Home(),
	);
}
}

class Home extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return DefaultTabController(
	length: 4,
	child: Scaffold(
		
		// define appbar here
		appBar: AppBar(
			
		// add tabs to the app
		bottom: TabBar(
			tabs: [
			Tab(text: 'Ani..XYZ'),
			Tab(text: 'Tween'),
			Tab(text: 'XYZTra..'),
			Tab(text: 'Builder'),
			],
		),
		title: Text('GeeksforGeeks'),
		),
		body: TabBarView(
			
		// animations
		children: [
			AnimatedXYZ(),
			TweenAnimation(),
			// XYZTransition(),
			// BuilderAnimation(),
		],
		),
	),
	);
}
}
