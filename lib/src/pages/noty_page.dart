import 'package:flutter/material.dart';

class NotyPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

     List arg = ModalRoute.of(context).settings.arguments;

      return Scaffold(
      appBar: AppBar(
        title: Text("Noty"),
      ),
      body: Center(
        child: Text(arg[0])
      ),
    );
   }
  
}