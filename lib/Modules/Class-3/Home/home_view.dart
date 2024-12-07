
import 'package:first_app/Modules/Class-3/Collumn_Guide/collumn_guide_view.dart';
import 'package:first_app/Modules/Class-3/Container_Guide/container_guide_view.dart';
import 'package:first_app/Modules/Class-3/Row_Guide/row_guide_view.dart';
import 'package:first_app/Modules/Class-3/Scaffold_Guide/scaffold_guide_view.dart';
import 'package:first_app/Modules/Class-4/CardGuide/card_guide_view.dart';
import 'package:first_app/Modules/Class-4/containerDetailsGuide/container_details_guide_view.dart';
import 'package:first_app/Modules/Class-4/listViewGuide/list_view_guide_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // List of pages and their titles
  final List<Map<String, dynamic>> pages = [
    {'title': 'Scaffold Example', 'page': ScaffoldExample()},
    {'title': 'Container Example', 'page': ContainerExample()},
    {'title': 'Row Example ', 'page': RowExample()},
    
     {'title': 'Column Example', 'page': CollumnExample() },
     {'title': 'Container-Details Example', 'page': ContainerDetailsGuide() },
     {'title': 'Card-Guide Example', 'page': CardGuide() },
     {'title': 'List-View-Guide Example', 'page': ListViewGuide() },
    // {'title': 'Text Example', 'page': TextExample()},
    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets List'.toUpperCase())),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']),
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}
