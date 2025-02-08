import 'package:flutter/material.dart';

class NavBarGuide extends StatelessWidget{
  const NavBarGuide({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container With Gradient Background'),),
      body: DefaultTabController(
        length: 3,
         child: Column(
            children: [
                TabBar(tabs: [
                    Tab(icon:Icon(Icons.home),text: 'Home',),
                    Tab(icon:Icon(Icons.search),text: 'Search',),
                    Tab(icon:Icon(Icons.settings),text: 'Settings',)

                ]),
                Expanded(child: TabBarView(children: [
                Center(child: Text('Home Page'),),
                Center(child:Text('Searh') ,),
                Center(child:Text('Settings') ,)
                ],
                ))
            ],
         )),
      
    );
  }
}