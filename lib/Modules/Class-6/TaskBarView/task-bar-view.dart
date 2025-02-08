import 'package:flutter/material.dart';

class TaskBarView extends StatelessWidget{
  const TaskBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Bar View Example'),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 20,),
        Icon(Icons.account_balance_wallet_rounded),
        SizedBox(width: 20,)
      ],
      ),
    );
  }
}