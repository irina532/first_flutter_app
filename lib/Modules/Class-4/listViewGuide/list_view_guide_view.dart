import 'package:flutter/material.dart';

class ListViewGuide extends StatelessWidget {
  const ListViewGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Guide"),),
        body: ListView.builder(
      itemCount: 25,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      reverse: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.access_alarm_sharp),
          title: Text('Item ${index + 1}'),
          subtitle: Text('Subtitle ${index + 1}'),
        );
      },
    ));
  }
}