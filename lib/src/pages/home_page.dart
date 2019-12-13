import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:icons_helper/icons_helper.dart';


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

     return FutureBuilder(
       future: menuProvider.cargarData(),
       initialData: [],
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         return ListView(
           children: _listaItems(snapshot.data, context),
         );
       },
     );
  }


  //retorna listas
  List<Widget>  _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];
     for (var op in data) {

       final widgetTemp =  ListTile(
         title: Text(op['texto']),
         leading: Icon(getIconGuessFavorMaterial(name:op['icon']) ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){
          Navigator.pushNamed(context, 'alert');
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }
}