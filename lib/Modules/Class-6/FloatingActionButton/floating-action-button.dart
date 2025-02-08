import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget{
  const FloatingActionButtonExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container With Gradient Background'),),
      body: Center(child: Text('Floating Action Button'),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("i am clicked");
      },
      child: Icon(Icons.access_alarm_outlined),
      
      ),
    );
  }
}