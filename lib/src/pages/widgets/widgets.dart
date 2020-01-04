import 'package:flutter/material.dart';

class _MisWidgets{
 

 Widget espera(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }

List<BottomNavigationBarItem> listaBtn(){
    return const <BottomNavigationBarItem>[
         /* BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Grupos'),
          ),
        ];
}
 

}

_MisWidgets misWidgets =  new _MisWidgets();