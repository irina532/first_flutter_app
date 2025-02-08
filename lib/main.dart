
import 'package:first_app/Modules/Class-3/Home/home_view.dart';
import 'package:first_app/Modules/Class-8-to-12/RoutsGuide/second-screen.dart';
import 'package:first_app/Modules/Class-8-to-12/RoutsGuide/third-screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        "/second": (context)=> SecondScreen(),
        "/third" :(context)=>ThirdScreen()
      },
    );
  }
}



