import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget{
 
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation Bar'),),
      body: Center(child: Text('Selected Tab: $_currentIndex')),
    
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        onTap: (index){
            setState(() {
              _currentIndex = index;
            });
        },
        
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label:'search'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Settings')
            
           ] ),
    );
  }
}