import 'package:MAT115/src/models/carrera_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/providers/carrera_provider.dart';

//materias



class CarreraPage extends StatefulWidget {
  @override
  _CarreraPageState createState() => _CarreraPageState();
}

class _CarreraPageState extends State<CarreraPage> {
  
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
        title: Text(api.nameApp),
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
      future: carrerasProvider.getCarreras(),
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

     
    Widget aux = misWidgets.subtitulo("CARRERAS Y OTROS", 23);
    opciones.add(aux);
    opciones.add(Divider());
   
     for (Carrera op in data) {

       final widgetTemp =  ListTile(
         title: Text(op.carrera),
   
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){

           /* myInterstitial
            ..load()
            ..show(
              anchorType: AnchorType.bottom,
              anchorOffset: 0.0,
              horizontalCenterOffset: 0.0,
            );*/
          Navigator.pushNamed(context, 'materia', arguments: op);
          
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


