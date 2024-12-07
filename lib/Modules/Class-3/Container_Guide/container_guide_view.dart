import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Example')),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          padding: EdgeInsets.all(20),
          
          decoration: BoxDecoration(color: Colors.red,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10), ),
          child: Text('This is a Container Example!'),
        ),
      ),
    );
  }
}
