// GridView.count Widget
import 'package:flutter/material.dart';

class GridViewCountGuide extends StatelessWidget {
  const GridViewCountGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Count Guide'),),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(22, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Item ${index + 1}',
                  style: TextStyle(color: Colors.white)),
            ),
          );
        }),
      ),
    );
  }
}
