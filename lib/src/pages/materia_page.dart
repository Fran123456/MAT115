import 'package:MAT115/src/models/carrera_model.dart';
import 'package:MAT115/src/models/materia_model.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/providers/materias_provider.dart';

//materias



class MateriaPage extends StatefulWidget {
  @override
  _MateriaPageState createState() => _MateriaPageState();
}

class _MateriaPageState extends State<MateriaPage> {
  
@override
void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
    super.initState();
}


    
@override
  Widget build(BuildContext context) {
     Carrera carreraId = ModalRoute.of(context).settings.arguments;
   /* myInterstitial
    ..load()
    ..show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );*/


    return Scaffold(
      appBar: AppBar(
        title: Text(carreraId.carrera),
      ),
      drawer: Drawer(
      child: misWidgets.barraNav(context),
      ),
      body: _lista(carreraId.id),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista(int carreraId) {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: materiasProvider.getMaterias(carreraId),
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


   
     for (Materia op in data) {

       

       final widgetTemp =  ListTile(
         title: Text(op.titulo),
         subtitle: Text(op.siglas),
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
          Navigator.pushNamed(context, 'unidades', arguments: op);
          
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


