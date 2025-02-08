
import 'package:first_app/Modules/Class-3/Collumn_Guide/collumn_guide_view.dart';
import 'package:first_app/Modules/Class-3/Container_Guide/container_guide_view.dart';
import 'package:first_app/Modules/Class-3/Row_Guide/row_guide_view.dart';
import 'package:first_app/Modules/Class-3/Scaffold_Guide/scaffold_guide_view.dart';
import 'package:first_app/Modules/Class-4/CardGuide/card_guide_view.dart';
import 'package:first_app/Modules/Class-4/circleAvatorWidget/circle_avatar_guide_view.dart';
import 'package:first_app/Modules/Class-4/containerDetailsGuide/container_details_guide_view.dart';
import 'package:first_app/Modules/Class-4/imageWidget/image_guide_view.dart';
import 'package:first_app/Modules/Class-4/lisTileWidget/list_tile_widget_view.dart';
import 'package:first_app/Modules/Class-4/listViewGuide/list_view_guide_view.dart';
import 'package:first_app/Modules/Class-6/BottomNavBar/bottom-nav-bar.dart';
import 'package:first_app/Modules/Class-6/FloatingActionButton/floating-action-button.dart';
import 'package:first_app/Modules/Class-6/NavBarGuide/nav-bar-guide-view.dart';
import 'package:first_app/Modules/Class-6/TaskAllinOne/AllinOne.dart';
import 'package:first_app/Modules/Class-8-to-12/RoutsGuide/first-screen.dart';
import 'package:first_app/Modules/Class-8-to-12/RoutsGuide/second-screen.dart';
import 'package:first_app/Modules/Class-8-to-12/custom-drawer-guide.dart';
import 'package:first_app/Modules/Class_5/ExpandedGuide/expanded_guide_view.dart';
import 'package:first_app/Modules/Class_5/FittedBoxGuide/fittedbox_guide_view.dart';
import 'package:first_app/Modules/Class_5/GridViewCountGuide/gridview_count_guide_view.dart';
import 'package:first_app/Modules/Class_5/GridViewGuide/gridview_guide_view.dart';
import 'package:first_app/Modules/Class_5/ListViewBuilderGuide/listview_builder_guide_view.dart';
import 'package:first_app/Modules/Tasks/Grid-View/grid_view.dart';
import 'package:first_app/Modules/Tasks/Shoes/shoes.dart';
import 'package:first_app/Modules/Tasks/TaskButton/task-button.dart';
import 'package:first_app/Modules/Tasks/Task_1/task-1-view.dart';
import 'package:first_app/Modules/Tasks/Task_2/task-2-view.dart';
import 'package:first_app/Modules/Class-6/TaskBarView/task-bar-view.dart';

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
     {'title': 'LisTile-Guide Example', 'page': ListTileGuide() },
     {'title': 'Image-Guide Example', 'page': ImageGuide() },
     {'title': 'Circle Avatar Guide', 'page': CircleAvatarGuide()},
     {'title':'ListViewBuilderGuide','page': ListViewBuilderGuide()},
     {'title':'GridViewGuide','page': GridViewGuide()},
     {'title':'GridViewCountGuide','page':GridViewCountGuide()},
     {'title':'FittedBoxGuide','page':FittedBoxGuide()},
     {'title':'ExpandedGuide','page':ExpandedGuide()},
     {'title':'Task_1','page':Task_1()},
     {'title':'Task_2','page':Task_2()},
     {'title':'GridView','page':GridViewExample()},
     {'title':'Shoes','page':Shoes()},
     {'title':'Task Button','page':ButtonTaskExample()},
     {'title':'Tab Bar','page':TaskBarView()},
     {'title':'Nav Bar','page':NavBarGuide()},
     {'title':'Bottom Nav Bar','page':BottomNavBar()},
     {'title':'Floating Action Button','page':FloatingActionButtonExample()},
     {'title':'First Screen','page':FirstScreen()},
     {'title':'Second Screen','page':SecondScreen()},
     
     {'title':'Custom Drawer','page':CustomDrawerExample()}
     
     
     
    // {'title': 'Text Example', 'page': TextExample()},
    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets List'.toUpperCase()),
      centerTitle: true,),
      body: Padding( 
        padding: EdgeInsets.all(20),
        child: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.all(10) ,
           child: Card(
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
            elevation: 5,
           child:  ListTile(
            
            contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 100),
            title: Text(pages[index]['title']),
            
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          ),
          ),
          );
        },
      ),
      ),
    );
  }
}
