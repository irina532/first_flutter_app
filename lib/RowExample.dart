import 'package:flutter/material.dart';
class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Icon(Icons.star, color: Colors.yellow),
            ),
            Icon(Icons.star, color: Colors.yellow),
            
            Text('Row Example'),
            
          ],
        ),
),
);
}
}