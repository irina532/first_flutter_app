import 'package:first_app/core/Widgets/custom-drawer-implement.dart';
import 'package:flutter/material.dart';

class CustomDrawerExample extends StatelessWidget{
  const CustomDrawerExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Drawer'),),
      drawer: CustomDrawer(),
    );
  }
}