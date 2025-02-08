// FittedBox Widget
import 'package:flutter/material.dart';

class FittedBoxGuide extends StatelessWidget {
  const FittedBoxGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fitted Box Guide'),),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 20),
          height: 100,
          width: 222,
          color: Colors.blue,
          child: FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: Text(
              'Allah Vorosha',
              style: TextStyle(color: Colors.white, ),
            ),
          ),
        ),
      ),
    );
  }
}
