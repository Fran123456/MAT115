import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

    
     return ListView(
       children: _listaItems(),
     );
  }

  //retorna listas
  List<Widget>  _listaItems(){
      return[];
  }
}