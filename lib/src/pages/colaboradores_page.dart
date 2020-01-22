import 'package:MAT115/src/models/colaborador_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/providers/colaborador_provider.dart';

//materias



class ColaboradoresPage extends StatefulWidget {
  @override
  _ColaboradoresPageState createState() => _ColaboradoresPageState();
}

class _ColaboradoresPageState extends State<ColaboradoresPage> {
  
@override
void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
    super.initState();
}


    
@override
  Widget build(BuildContext context) {
   /* myInterstitial
    ..load()
    ..show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );*/


    return Scaffold(
      appBar: AppBar(
        title: Text("Colaboradores"),
      ),
      drawer: Drawer(
      child: misWidgets.barraNav(context),
      ),
      body: _lista(),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: colaboradoresProvider.getColaboradores(),
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         if(snapshot.hasData){
           return ListView(
           children: _listaItems(snapshot.data, context),
        );
         }else if(snapshot.hasError){
           return misWidgets.error();
         }
         return misWidgets.espera();

       },
     );
  }


  //retorna listas
  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];

   
     for (Colaborador op in data) {

       final widgetTemp =  ListTile(
         title: Text(op.nombre),
         subtitle: Text(op.descripcion),
   
         leading: Icon(Icons.insert_emoticon ,color: Colors.blue),
         
         
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


