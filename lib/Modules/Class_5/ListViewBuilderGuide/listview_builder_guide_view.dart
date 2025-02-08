// ListView.builder Widget
import 'package:flutter/material.dart';

class ListViewBuilderGuide extends StatelessWidget {
  const ListViewBuilderGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder Guide'),),
      body: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        reverse: false,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
         // return ListTile(
          //  leading: CircleAvatar(child: Text('${index + 1}')),
          //  title: Text('List Item ${index + 1}'),
           // subtitle: Text('Subtitle ${index + 1}'),
         // );
         return Container(
          padding: EdgeInsets.only(left: 10),
          height: 60,
          alignment: Alignment.centerLeft,
          
          color: Colors.green,
          child: ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
           title: Text('List Item ${index + 1}'),
            subtitle: Text('Subtitle ${index + 1}'),

          ),
         );
        }, separatorBuilder: (BuildContext context, int index) { 
          return SizedBox(height: 10,);
         },
      ),
    );
  }
}
